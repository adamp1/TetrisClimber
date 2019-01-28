using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class PressAnyButton : MonoBehaviour
{
    public GameObject menu;
    public AnimationCurve curve;
    public float speed = 0.4f;

    // Start is called before the first frame update
    void Start()
    {
        
    }

    // Update is called once per frame
    void Update()
    {
        if (Input.anyKey){
            menu.SetActive(true);
            gameObject.SetActive(false);
        }


    }
}
