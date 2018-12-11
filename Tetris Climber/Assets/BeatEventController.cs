using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class BeatEventController : MonoBehaviour
{
    public static System.Action Jump;
    public static System.Action<int> Hurt;

    // Start is called before the first frame update
    void Start()
    {
        
    }

    // Update is called once per frame
    void Update()
    {
        if (Input.GetKeyDown(KeyCode.J))
        {
            if (Jump != null) Jump();
        }
        if (Input.GetKeyDown(KeyCode.H))
        {
            if (Jump != null) Hurt(Random.Range(0,100));
        }
    }
}
