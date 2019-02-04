using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class GeneralHelper : MonoBehaviour
{
    public Material previewmatref;
    // Start is called before the first frame update
    void Start()
    {
        spieler = GameObject.FindObjectOfType<PlayerMovement>();
    }

    // Update is called once per frame
    void FixedUpdate()
    {
        ChangePreviewColors(); 
        BlockLights();
    }

    public LineRenderer[] lrs;
    public float previewEmissionPower = 2;
    public PlayerMovement spieler;
    public float lightDistance = 20;
    public float lightPower = 5;

    void BlockLights()
    {
        //get only additional blocks?
        MinoPhysics[] minos = GameObject.FindObjectsOfType<MinoPhysics>();

        foreach (MinoPhysics m in minos)
        {
            //get light
            Light l = m.transform.Find("Point Light").GetComponent<Light>();

            //light color = block glow color
            Color c = m.GetComponent<MeshRenderer>().material.GetColor("_GlowColor");
            l.color = c;
            l.intensity = lightPower;

            //if close enough to player enable lights
            if (Vector3.Distance(m.transform.position, spieler.transform.position) <= lightDistance)
            {
                l.enabled = true;
            }
            else
            {
                l.enabled = false;
            }

        }


    }

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
