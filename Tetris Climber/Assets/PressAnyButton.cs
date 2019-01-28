using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class PressAnyButton : MonoBehaviour
{
    public GameObject menu;
    public AnimationCurve curve;
    public float speed = 0.4f;
    Text text;

    // Start is called before the first frame update
    void Start()
    {
        text = GetComponent<Text>();
    }

    // Update is called once per frame
    void Update()
    {
        if (Input.anyKey)
        {
            menu.SetActive(true);
            gameObject.SetActive(false);
        }

        Vector4 a = text.color;
        a.w = (Mathf.Sin((Time.time * speed) * Mathf.PI) + 1) / 2;
        a.w = curve.Evaluate(a.w);
        text.color = a;
    }
}
