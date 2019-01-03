﻿using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class TetrisBoomTest : MonoBehaviour
{
    public float speed = 8;
    public float offset = 0.1f;

    // Start is called before the first frame update
    void Start()
    {
        material = GetComponent<MeshRenderer>().material;

        offset = transform.position.x * 0.1f;
    }

    Material material;

    IEnumerator boom()
    {
        float t = 0;

        yield return new WaitForSeconds(offset);

        while (t <= 1)
        {
            material.SetFloat("_boom", Mathf.Lerp(0, 1, t));
            yield return null;
            print(Time.time + " in boom");

            t += Time.deltaTime * speed;
        }

        material.SetFloat("_boom", 0);
        GetComponent<MeshRenderer>().enabled = false;
        //material.SetFloat("_emintensity", 1000);
    }

    void Update()
    {
        if (Input.GetKeyDown(KeyCode.Space))
        {
            print("boom");
            StartCoroutine(boom());
        }

        if (Input.GetKeyDown(KeyCode.LeftControl))
        {
            GetComponent<MeshRenderer>().enabled = true;
        }
    }

}
