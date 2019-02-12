using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Faller : MonoBehaviour
{
    float speed = 10;
    float max = 10;
    float distancemax = 100;
    Vector3 startpos;
    // Start is called before the first frame update
    void Start()
    {
        transform.position += new Vector3(rand(), rand(), rand());
        speed = Random.Range(speed, speed * 2);
        print(speed);
        startpos = transform.position;
    }

    float rand()
    {
        return Random.Range(-max, max);
    }

    // Update is called once per frame
    void Update()
    {
        transform.position += transform.up * -speed * Time.deltaTime;

        if (Vector3.Distance(transform.position, startpos) > distancemax)
        {
            Destroy(gameObject);
        }
    }
}
