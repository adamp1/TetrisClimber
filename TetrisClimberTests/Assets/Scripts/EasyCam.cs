using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class EasyCam : MonoBehaviour
{

    public float speed = 0.2f;
    public float sens = 1;

    // Use this for initialization
    void Start()
    {

    }

	public float updown;

    // Update is called once per frame
    void Update()
    {

        if (Input.GetMouseButton(1))
        {
            Cursor.visible = false;
            Cursor.lockState = CursorLockMode.Locked;

			transform.Rotate(Vector3.up, Input.GetAxis("Mouse X") * sens, Space.World);
			transform.Rotate(transform.right, Input.GetAxis("Mouse Y") * -sens, Space.World);
        }
        else
        {
            Cursor.visible = true;
            Cursor.lockState = CursorLockMode.None;
        }

		if (Input.GetKey(KeyCode.E)){
			updown = 1;
		}
		else if (Input.GetKey(KeyCode.Q)){
			updown = -1;
		}
		else{
			updown = 0;
		}

    }

	void FixedUpdate(){

		transform.position = transform.position + Input.GetAxis("Vertical") * speed * transform.forward + 
		Input.GetAxis("Horizontal") * speed * transform.right + Vector3.up * updown * speed;

	}
}
