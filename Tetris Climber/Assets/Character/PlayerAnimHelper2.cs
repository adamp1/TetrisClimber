using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerAnimHelper2 : MonoBehaviour
{

    public Animator animator;
    public string state;
    public bool debugmode;
    public GameObject slice1, slice2;
    // Start is called before the first frame update
    void Start()
    {
        animator = GetComponent<Animator>();

    }

    //Play Jump animation
    public void Jump()
    {
        animator.Play("Jump");

    }


    //Play Run animation
    public void Run()
    {
        animator.Play("Run");
    }

    //Play Slice animation
    public void Slice()
    {
        animator.Play("Slice");
        if (slice1 && slice2)
        {
            StartCoroutine(SliceAnim(slice1));
            StartCoroutine(SliceAnim(slice2));
        }

    }

    public float slicespeed = 0.5f;

    IEnumerator SliceAnim(GameObject g)
    {
        float t = 0;
        Material m = g.GetComponent<MeshRenderer>().material;

        while (t <= 1)
        {
            m.SetFloat("_alpha", Mathf.Lerp(-0.5f, 0.49f, t));
            t += Time.deltaTime * slicespeed;

            yield return null;
        }
    }

    //Play Idle animation
    public void Idle()
    {
        animator.Play("Idle");
    }

    public void JumpIdle()
    {
        animator.Play("Jump Idle");
    }

    public void PlayFootStep()
    {
        AkSoundEngine.PostEvent("FootStep", gameObject);
    }

    public void PostLandingSound(){
        AkSoundEngine.PostEvent("Land", gameObject);
    }

    // Update is called once per frame
    void Update()
    {


        if (Input.GetAxis("Horizontal") != 0)
        {
            // print(Input.GetAxis("Horizontal"));
            bool mirror = Input.GetAxis("Horizontal") < 0;
            float mirrorfloat = mirror ? 1 : 0;
            mirrorfloat *= 180;
            //animator.Play(state);

            transform.eulerAngles = new Vector3(0, mirrorfloat, 0);
        }

        if (debugmode)
        {
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

            if (Input.GetKeyDown(KeyCode.O))
            {
                JumpIdle();
            }
        }




    }
}
