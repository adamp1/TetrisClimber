using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ScriptWithNoName : MonoBehaviour
{
    bool key1;
    bool key2;
    bool key3;
    bool key4;
    bool key5;
    bool key6;
    bool key7;
    bool key8;
    public float godmode; 

    // Start is called before the first frame update
    void Start()
    {
        
    }

    // Update is called once per frame
    void Update()
    {
        if (Input.GetKeyDown(KeyCode.UpArrow))
        {
            key1 = true;
            key2 = false;
            key3 = false;
            key4 = false;
            key5 = false;
            key6 = false;
            key7 = false;
            key8 = false;
        }

        if (Input.GetKeyDown(KeyCode.UpArrow) && key1)
        {
            key1 = false;
            key2 = true;
            key3 = false;
            key4 = false;
            key5 = false;
            key6 = false;
            key7 = false;
            key8 = false;
        }

        if (Input.GetKeyDown(KeyCode.DownArrow) && key2)
        {
            key1 = false;
            key2 = false;
            key3 = true;            
            key4 = false;
            key5 = false;
            key6 = false;
            key7 = false;
            key8 = false;
        }

        if (Input.GetKeyDown(KeyCode.DownArrow) && key3)
        {
            key1 = false;
            key2 = false;
            key3 = false;
            key4 = true;
            key5 = false;
            key6 = false;
            key7 = false;
            key8 = false;
        }

        if (Input.GetKeyDown(KeyCode.LeftArrow) && key4)
        {
            key1 = false;
            key2 = false;
            key3 = false;
            key4 = false;
            key5 = true;
            key6 = false;
            key7 = false;
            key8 = false;
        }

        if (Input.GetKeyDown(KeyCode.RightArrow) && key5)
        {
            key1 = false;
            key2 = false;
            key3 = false;
            key4 = false;
            key5 = false;
            key6 = true;
            key7 = false;
            key8 = false;
        }

        if (Input.GetKeyDown(KeyCode.LeftArrow) && key6)
        {
            key1 = false;
            key2 = false;
            key3 = false;
            key4 = false;
            key5 = false;
            key6 = false;
            key7 = true;
            key8 = false;
        }

        if (Input.GetKeyDown(KeyCode.RightArrow) && key7)
        {
            key1 = false;
            key2 = false;
            key3 = false;
            key4 = false;
            key5 = false;
            key6 = false;
            key7 = false;
            key8 = true;
        }

        if(key8)
        {
            
        }
    }
}
