using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class BlendshapePlayer : MonoBehaviour
{
    SkinnedMeshRenderer skinned;

    public float blend0, blend1;
    public float speed = 1;
    public float max = 100;

    // Start is called before the first frame update
    void Start()
    {
        skinned = GetComponent<SkinnedMeshRenderer>();
    }

    // Update is called once per frame
    void Update()
    {
        float gleichung = Mathf.Abs(Mathf.Sin(Time.time * speed)) * max;
        float gleichung2 = Mathf.Abs(Mathf.Cos(Time.time * speed)) * max;
        blend0 = gleichung;
        blend1 = gleichung2;
        

        skinned.SetBlendShapeWeight(0, blend0);
        skinned.SetBlendShapeWeight(1, blend1);
    }
}
