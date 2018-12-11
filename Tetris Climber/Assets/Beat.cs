using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Beat : MonoBehaviour
{
    // Start is called before the first frame update
    void Start()
    {
        BeatEventController.Jump += Hop;
        BeatEventController.Hurt += Aua;
    }

    // Update is called once per frame
    void Update()
    {
        
    }

    void Hop()
    {
        transform.position += Random.insideUnitSphere;
    }

    void Aua(int schmerz)
    {
        if (schmerz > 50)
            Debug.Log("AU");
    }

    void OnDestroy()
    {
        BeatEventController.Jump -= Hop;
        BeatEventController.Hurt -= Aua;
    }
}
