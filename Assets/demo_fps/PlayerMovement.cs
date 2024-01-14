using System;
using System.Threading;
using Unity.VisualScripting;
using UnityEngine;
using UnityEngine.InputSystem;

[RequireComponent(typeof(CharacterController))]
public class PlayerMovement : MonoBehaviour
{
    [Header("Movement Settings")]
    public float speed = 5f;
    [SerializeField] private float currentspeed;
    public float rotationSpeed = 10f;
    public float minVerticalRotation = -80f;
    public float maxVerticalRotation = 80;

    [Header("Stamina Settings")]
    public float maxStamina = 100f;
    public float reducStamina = 1f;
    public float increaseStamina = 0.001f;
    [SerializeField] private float currentStamina;

    [Header("Mouse Settings")]
    private CharacterController characterController;
    private Vector2 movementInput;
    private Vector2 mouseLookInput;
    private float verticalRotation = 0f;

    [Header("Jump Settings")]
    [SerializeField] private float jumpHeight = 5f;
    private Vector3 velocity = new Vector3(0f, 0f, 0f);
    private float JumpInputValue;
    public float gravity = 0.5f;
    private float _yVelocity;

    //Dung start se toi uu hon sai Awake
    private void Start()
    {
        characterController = GetComponent<CharacterController>();
        Cursor.lockState = CursorLockMode.Locked;
        Cursor.visible = false; // Invisible Cursor
        currentspeed = speed;
        currentStamina = maxStamina;
    }

    private void Update()
    {
        JumpMovePlayer();
        RotatePlayerWithMouse();
        speed = SetSpeed(speed);
    }

    private void FixedUpdate() {
        currentStamina = StaminaManager(currentStamina);
    }

    private void OnMove(InputValue value)
    {
        movementInput = value.Get<Vector2>();
        // Debug.Log(movementInput);
    }

    private void OnLook(InputValue value)
    {
        mouseLookInput = value.Get<Vector2>();
    }

    private void OnJump(InputValue value)
    {
        JumpInputValue = value.Get<float>();
        Debug.Log(JumpInputValue);
    }
    private float StaminaManager(float currentStamina)
    {
        if((currentStamina <= 0 || currentStamina < maxStamina) && speed == 3){
            // Debug.Log("Cong");
            currentStamina += increaseStamina; 
        }else if(speed == 6){
            Debug.Log("Tru");
            currentStamina -= reducStamina;
        }else if (currentStamina > maxStamina){
            currentStamina = maxStamina;
        }
        return currentStamina;
    }
    private float SetSpeed(float speed)
    {
        if(currentStamina > 0.1f){
            if (Input.GetKey(KeyCode.W))
            {
                if (Input.GetKeyDown(KeyCode.LeftShift))
                {
                    speed *= 2;
                }
                else if (Input.GetKeyUp(KeyCode.LeftShift))
                {
                    speed = currentspeed;
                }
            } else if (Input.GetKeyUp(KeyCode.W))
            {
                speed = currentspeed;
            }
        }else if (currentStamina <= 0.1){
            speed = currentspeed;
        }
        return speed;
    }

    private void JumpMovePlayer()
    {
        //Cai isGrounded doi khi se gay bug 
        //Em doc them cai nay de hieu ro hon nhe https://forum.unity.com/threads/character-controller-why-is-isgrounded-always-at-false-when-the-player-is-not-moving.919994/
        if (characterController.isGrounded)
        {
            Vector3 moveDirection = new Vector3(movementInput.x, 0f, movementInput.y).normalized;
            velocity = transform.TransformDirection(moveDirection * speed);
            if (JumpInputValue == 1)
            {
                JumpInputValue = 0;
                _yVelocity = 0;
                _yVelocity = jumpHeight;
            }
        }
        else
        {
            _yVelocity -= gravity;
        }
        velocity.y = _yVelocity;
        characterController.Move(velocity * Time.deltaTime);

    }

    private void RotatePlayerWithMouse()
    {
        // Rotate player based on mouse input
        if (mouseLookInput != Vector2.zero)
        {
            float mouseX = mouseLookInput.x * rotationSpeed * Time.deltaTime;
            float mouseY = mouseLookInput.y * rotationSpeed * Time.deltaTime;

            // Adjust the horizontal rotation
            transform.Rotate(Vector3.up * mouseX);

            // Adjust the vertical rotation within specified limits
            verticalRotation -= mouseY;
            verticalRotation = Mathf.Clamp(verticalRotation, minVerticalRotation, maxVerticalRotation);

            // Apply the vertical rotation
            Camera.main.transform.localRotation = Quaternion.Euler(verticalRotation, 0f, 0f);
        }
    }
}
