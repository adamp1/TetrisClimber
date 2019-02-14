using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;
using UnityEngine.UI;

public class ScriptWithNoName : MonoBehaviour
{
    public GameObject text1;
    public GameObject text2;
    public GameObject text3;
    //public bool key1;
    //public bool key2;
    //public bool key3;
    //public bool key4;
    //public bool key5;
    //public bool key6;
    //public bool key7;
    //public bool key8;
    public bool godmode; 

    // Start is called before the first frame update
    void Start()
    {

    }

    // Update is called once per frame
    void Update()
    {
        if (SceneManager.GetActiveScene().name == "Title Screen 0")
        {
           /* if (Input.GetKeyDown(KeyCode.UpArrow))
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
            }*/

            if (Input.GetKey(KeyCode.LeftControl) && Input.GetKeyDown(KeyCode.C))
            {
                godmode = true;
                text1.GetComponent<Text>().text = "YOU";
                text2.GetComponent<Text>().text = "FILTHY";
                text3.GetComponent<Text>().text = "CHEATER";
            }
        }
       
    }
}
