using UnityEngine;
using UnityEngine.InputSystem;

[RequireComponent(typeof(CharacterController))]
public class PlayerMovement : MonoBehaviour
{
    [Header("Movement Settings")]
    public float speed = 5f;
    public float rotationSpeed = 10f;
    public float minVerticalRotation = -80f;
    public float maxVerticalRotation = 80f;

    [Header("Stamina Settings")]
    public float maxStamina = 100f;
    public float normalRechargeRate = 5f;        // Normal recharge rate per second
    public float staminaDepletionRate = 10f;    // Stamina depletion rate per second
    public float depletedRechargeDuration = 5f;  // Duration for increased recharge after depletion
    
    //For debug purposes
    [SerializeField] private float currentStamina;
    [SerializeField]private float depletedRechargeTimer;

    private float sprintInputValue;
    private CharacterController characterController;
    private Vector2 movementInput;
    private Vector2 mouseLookInput;
    private float verticalRotation = 0f;

    private void Awake()
    {
        characterController = GetComponent<CharacterController>();
        Cursor.lockState = CursorLockMode.Locked;
        Cursor.visible = false; // Invisible Cursor
        currentStamina = maxStamina;
    }

    private void Update()
    {
        UpdateStaminaAndMovePlayer();
        RotatePlayerWithMouse();
    }

    private void OnMove(InputValue value)
    {
        movementInput = value.Get<Vector2>();
    }

    private void OnLook(InputValue value)
    {
        mouseLookInput = value.Get<Vector2>();
    }

    private void OnSprint(InputValue value)
    {
        sprintInputValue = value.Get<float>();
        // Use sprintInputValue as needed (it will be non-zero when LeftShift is pressed)
    }

    private void UpdateStaminaAndMovePlayer()
    {
        Vector3 forward = transform.TransformDirection(Vector3.forward);
        Vector3 right = transform.TransformDirection(Vector3.right);

        Vector3 moveDirection = (forward * movementInput.y) + (right * movementInput.x);
        moveDirection.Normalize();

        // characterController.SimpleMove(moveDirection * speed); //This is a placeholder as the stamina is under construction
                
        // Check if Sprint action is engaged WASD is pressed ,and there is enough stamina
        if (sprintInputValue == 1f && (movementInput.y == 1f || movementInput.x == 1f) && currentStamina > 0 && depletedRechargeTimer == 0)
        {
            characterController.SimpleMove(moveDirection * (speed * 2)); // Double speed
            // Deplete stamina faster when sprinting
            currentStamina = Mathf.Clamp(currentStamina - (staminaDepletionRate * Time.deltaTime), 0f, maxStamina);
        }
        else if ((sprintInputValue != 1f) || (currentStamina > 0 && depletedRechargeTimer == 0))
        {
            characterController.SimpleMove(moveDirection * speed);
            currentStamina = Mathf.Clamp(currentStamina + ((normalRechargeRate) * Time.deltaTime), 0f, maxStamina);
        }
        
        // Handle stamina depletion and recharge duration
        if (currentStamina == 0)
        {
            // If stamina is depleted, start or reset the depleted recharge timer                   
            Debug.Log("Out of Stamina");
            //  characterController.SimpleMove(moveDirection * (0.75f * speed)); // Reduced speed     
            //  depletedRechargeTimer = depletedRechargeDuration;                      
        }
        // if (depletedRechargeTimer > 0)
        // {
        //     // During the timer, recharge at an increased rate
        //     currentStamina = Mathf.Clamp(currentStamina + ((normalRechargeRate*1.25f) * Time.deltaTime), 0f, maxStamina);
        //     depletedRechargeTimer -= Time.deltaTime;
        //     if (depletedRechargeTimer < 0)
        //     {
        //         depletedRechargeDuration = 0;
        //     }
        // }
        // else
        // {
        //     characterController.SimpleMove(moveDirection * speed);
        //     currentStamina = Mathf.Clamp(currentStamina + ((normalRechargeRate) * Time.deltaTime), 0f, maxStamina);
        // }
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
