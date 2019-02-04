using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class GeneralHelper : MonoBehaviour
{
    public Material previewmatref;
    // Start is called before the first frame update
    void Start()
    {

    }

    // Update is called once per frame
    void FixedUpdate()
    {
        ChangePreviewColors(); //doesnt work and kills performance
    }

    public LineRenderer[] lrs;
    public float previewEmissionPower = 2;

    void ChangePreviewColors()
    {
        //get all line renderer
        lrs = GameObject.FindObjectsOfType<LineRenderer>();

        //only those with preview mat
        foreach (LineRenderer r in lrs)
        {
            Material m = r.material;
            //print(previewmatref.name + " " + m.name);

            if (m.name == previewmatref.name + " (Instance)")
            {
                //print(r.name);

                //get their block
                Material b = r.GetComponent<MeshRenderer>().material;

                //change material color to block color
                Color c = b.GetColor("_GlowColor");
                c *= previewEmissionPower;
                m.SetColor("_EmissionColor", c);
            }
        }


    }
}
