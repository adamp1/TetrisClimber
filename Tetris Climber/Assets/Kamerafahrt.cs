using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;
public class Kamerafahrt : MonoBehaviour
{

    public Transform target;
    Vector3 startpos;
    public float speed = 1;

    // Start is called before the first frame update
    void Start()
    {
        startpos = transform.position;
    }

    // Update is called once per frame
    void Update()
    {
        transform.position = Vector3.Lerp(startpos, target.position, Mathf.Pow(Mathf.Sin(Time.time * speed), 2));

        if (Input.anyKeyDown){
            //SceneManager.LoadScene(1);
        }
    }
}
