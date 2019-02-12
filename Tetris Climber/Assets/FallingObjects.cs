using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class FallingObjects : MonoBehaviour
{
    public Vector3 distances = new Vector3(0, 20, 50);
    public GameObject[] objects;
    public float waittime = 2;
    PlayerMovement spieler;

    void Start()
    {
        spieler = GameObject.FindObjectOfType<PlayerMovement>();
        StartCoroutine(Spawnobjs());
    }

    IEnumerator Spawnobjs()
    {
        while (true)
        {
            yield return new WaitForSeconds(waittime);
            Instantiate(objects[Random.Range(0, objects.Length - 1)],
            spieler.transform.position + distances, transform.rotation, transform);
        }
    }
}
