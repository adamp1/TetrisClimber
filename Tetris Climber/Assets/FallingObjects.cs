using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class FallingObjects : MonoBehaviour
{
    public GameObject[] objects;
    public float min, max;
    public float t;
    public Vector2 spawndistance;
    public float speed = 5;
    public float deathdistance = 100;
    public GameObject a;
    PlayerMovement spieler;
    // Start is called before the first frame update
    void Start()
    {
        t = Random.Range(min, max);
        spieler = GameObject.FindObjectOfType<PlayerMovement>();
    }

    // Update is called once per frame
    void Update()
    {
        t -= Time.deltaTime;

        if (t <= 0 && !a)
        {
            int i = Random.Range(0, objects.Length-1);
            a = Instantiate(objects[i],spieler.transform.position + new Vector3(0, spawndistance.x, spawndistance.y), 
            objects[i].transform.rotation, transform) as GameObject;

            t = Random.Range(min, max);
        }

        if (a){
            a.transform.position += Vector3.down * speed * Time.deltaTime;

            if (Vector3.Distance(a.transform.position, spieler.transform.position) >= deathdistance){
                Destroy(a);
                a = null;
                t = Random.Range(min, max);
            }
        }
    }
}
