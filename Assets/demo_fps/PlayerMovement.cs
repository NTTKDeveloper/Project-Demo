using UnityEngine;

public class PlayerMovement : MonoBehaviour
{
    //Movement and jump force
    public float speed = 5f;
    public float jumpForce = 5f; 

    private CharacterController characterController;

    // Mouse speed
    public float sensitivity = 2f;
    private float rotationX = 0f;

    private void Start()
    {
        characterController = GetComponent<CharacterController>();

        Cursor.lockState = CursorLockMode.Locked;
        Cursor.visible = false;
    }

    private void Update()
    {
        MovePlayer();
        RotatePlayer();

        // Check for jump input
        if (Input.GetButtonDown("Jump"))
        {
            Jump();
        }
    }

    private void MovePlayer()
    {
        float horizontal = Input.GetAxis("Horizontal");
        float vertical = Input.GetAxis("Vertical");

        Vector3 moveDirection = new Vector3(horizontal, 0f, vertical).normalized;

        // Rotate the movement direction based on player's Y-axis rotation
        Vector3 move = transform.TransformDirection(moveDirection);

        // Apply gravity
        move.y += Physics.gravity.y * Time.deltaTime;

        characterController.Move(move * speed * Time.deltaTime);
    }

    private void RotatePlayer()
    {
        float mouseX = Input.GetAxis("Mouse X") * sensitivity;
        float mouseY = Input.GetAxis("Mouse Y") * sensitivity;

        // Rotate the player around the Y-axis (left and right)
        transform.Rotate(Vector3.up * mouseX);

        // Rotate the camera around the X-axis (up and down)
        rotationX -= mouseY;
        rotationX = Mathf.Clamp(rotationX, -90f, 90f);

        // Apply the new rotation to the camera
        Camera.main.transform.localRotation = Quaternion.Euler(rotationX, 0f, 0f);
    }

    private void Jump()
    {
        if (characterController.isGrounded)
        {
            // Apply the jump force if the player is grounded
            Vector3 jumpVector = Vector3.up * jumpForce;
            characterController.Move(jumpVector * Time.deltaTime);
        }
    }
}
