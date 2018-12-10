using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class BlockSelfdestruct : MonoBehaviour
{
    GameObject Deathcollider;

    void Start()
    {
         
    }

    void Update()
    {
        DestroyBlock();
    }


    void DestroyBlock()
    {
        Deathcollider = GameObject.Find("Death Collider");

        if (Deathcollider.transform.position.y > transform.position.y)
        {
            Destroy(this.gameObject);
        }
    }
}
