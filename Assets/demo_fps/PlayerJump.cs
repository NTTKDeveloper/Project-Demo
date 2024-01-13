using UnityEngine;
using UnityEngine.InputSystem;

[RequireComponent(typeof(CharacterController))]
public class PlayerJump : MonoBehaviour
{
    [Header("Jump Settings")]
    [SerializeField]private float jumpHeight = 5f;
    private float gravityVal= -9.81f;

    private CharacterController characterController;
    private Vector3 velocity;
    private bool grounded;
    private bool jumpPressed = false;
   
    private void Start()
    {
        characterController = GetComponent<CharacterController>();
    }
    private void Update()
    {
        MovementJump();
    }
    private void MovementJump()
    {
        grounded = characterController.isGrounded;
        if (grounded)
        {
            velocity.y = 0f;
        }
        if (jumpPressed && grounded)
        {
            velocity.y += Mathf.Sqrt(jumpHeight * -1f * gravityVal);
            jumpPressed = false;
        }
        velocity.y += gravityVal * Time.deltaTime;
        characterController.Move(velocity * Time.deltaTime);
    }
    private void OnJump()
    {
        if(characterController.velocity.y == 0){
            // Debug.Log("Can Jump");
            jumpPressed = true;
        }
        // else
        // {
        //     Debug.Log("Can not Jump");
        // }
       
    }

    
}
