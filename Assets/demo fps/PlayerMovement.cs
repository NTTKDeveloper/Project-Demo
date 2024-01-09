using UnityEngine;

public class PlayerMovement : MonoBehaviour
{
    public float speed = 5f;

    private CharacterController characterController;

    // Mouse look variables
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
    }

    private void MovePlayer()
    {
        float horizontal = Input.GetAxis("Horizontal");
        float vertical = Input.GetAxis("Vertical");

        Vector3 moveDirection = new Vector3(horizontal, 0f, vertical).normalized;

        // Rotate the movement direction based on player's Y-axis rotation
        Vector3 move = transform.TransformDirection(moveDirection);

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
}
