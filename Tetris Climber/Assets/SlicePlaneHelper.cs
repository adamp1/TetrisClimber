using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SlicePlaneHelper : MonoBehaviour
{

    DestroyBlocks spieler;
    MeshRenderer renderer;
    // Start is called before the first frame update
    void Start()
    {
        spieler = GameObject.FindObjectOfType<DestroyBlocks>();
        renderer = GetComponent<MeshRenderer>();
    }

    // Update is called once per frame
    void Update()
    {
        if (spieler.inisiateSlice){
            renderer.enabled = true;
        }
        else{
            renderer.enabled = false;
        }
    }
}
