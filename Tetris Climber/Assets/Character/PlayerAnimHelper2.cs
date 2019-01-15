using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerAnimHelper2 : MonoBehaviour
{

    public Animator animator;
    public string state;
    // Start is called before the first frame update
    void Start()
    {
        animator = GetComponent<Animator>();

    }

    public void Jump()
    {
        animator.Play("Jump");
    }

    public void Run()
    {
        animator.Play("Run");
    }

    public void Slice()
    {
        animator.Play("Slice");

    }

    public void Idle()
    {
        animator.Play("Idle");
    }

    // Update is called once per frame
    void Update()
    {


        if (Input.GetAxis("Horizontal") != 0)
        {
            print(Input.GetAxis("Horizontal"));
            bool mirror = Input.GetAxis("Horizontal") < 0;
            float mirrorfloat = mirror ? 1 : 0;
            mirrorfloat *= 180;
            //animator.Play(state);

            transform.eulerAngles = new Vector3(0, mirrorfloat, 0);
        }

        if (Input.GetKeyDown(KeyCode.I))
        {
            Idle();
        }

        if (Input.GetKeyDown(KeyCode.S))
        {
            Slice();
        }

        if (Input.GetKeyDown(KeyCode.R))
        {
            Run();
        }

        if (Input.GetKeyDown(KeyCode.J))
        {
            Jump();
        }

    }
}
