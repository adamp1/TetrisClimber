using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;
using UnityEngine.UI;

public class Game : MonoBehaviour {

    float playerheight;
    float gametime;
    float distancetodanger;

    public float fallingspeed = 5f;

    public static int gridWidth = 14;
    public static int gridHeight = 1000;

    public static Transform[,] grid = new Transform[gridWidth, gridHeight];

    public GameObject[] TetrisPrefab = new GameObject[6];

    int prefabRepeat = 9;
    bool spawnPrefab;
    bool startGame;
    bool pauseGame;
    bool dead;

    bool rayInitializing;

    GameObject Player;
    GameObject Danger;
    GameObject StopUI;
    GameObject PauseMenuUI;

    Vector3 SpawnerPos;
 
    void Awake()
    {
        
    }

    //Start
    void Start()
    {
        Player = GameObject.Find("Player");
        Danger = GameObject.Find("Death Collider");
        StopUI = GameObject.Find("Stop");
        PauseMenuUI = GameObject.Find("Pause");
        SpawnNextPrefab();
    }

    //Update
    private void Update()
    {
        if(Player != null)
        {
            if (spawnPrefab)
            {
                SpawnNextPrefab();
            }

            MoveSpawnerToPlayer();
            GameTime();
            PlayerHeight();
            DistanceToDanger();
            PauseGame();
        }
    }

    //Grid
    public void UpdateGrid(BlockMovement tetrisBlock)
    {
        for (int y = 0; y < gridHeight; y++)
        {
            for (int x = 0; x < gridWidth; x++)
            {
                if(grid[x, y] != null )
                {
                    if(grid[x, y].parent == tetrisBlock.transform)
                    {
                        grid[x, y] = null;
                    }
                }
            }
        }

        foreach(Transform mino in tetrisBlock.transform)
        {
            Vector3 pos = Round(mino.position);

            if(pos.y < gridHeight)
            {
                grid[(int)pos.x, (int)pos.y] = mino;
            }
        }
    }

    public Transform GetTransformAtGridPosition(Vector3 pos) {

        if(pos.y > gridHeight - 1)
        {
            return null;
        }
        else
        {
            return grid[(int)pos.x, (int)pos.y];
        }

    }


    public bool CheckIsInsideGrid (Vector3 pos)
    {
        return ((int)pos.x >= 0 && (int)pos.x < gridWidth && (int)pos.y >= 0 && (int)pos.z == 0); 
    }

    public Vector3 Round (Vector3 pos)
    {
        return new Vector3(Mathf.Round(pos.x), Mathf.Round(pos.y), Mathf.Round(pos.z));
    }


    //Spawn Tetris Block
    public void SpawnNextPrefab()
    {
        //Unfertig

        RaycastHit hit;
        Ray CheckUnderSpawner = new Ray(transform.position, Vector3.down);
        Debug.DrawRay(transform.position, Vector3.down);
        Ray CheckUnderSpawnerLeft = new Ray(new Vector3(transform.position.x -4, transform.position.y, transform.position.z), Vector3.down);
        Debug.DrawRay(new Vector3(transform.position.x - 4, transform.position.y, transform.position.z), Vector3.down);
        Ray CheckUnderSpawnerRight = new Ray(new Vector3(transform.position.x + 5, transform.position.y, transform.position.z), Vector3.down);
        Debug.DrawRay(new Vector3(transform.position.x + 5, transform.position.y, transform.position.z), Vector3.down);

        int randomPrefab = Random.Range(0, 5); 
        int flipPrefab = Random.Range(0, 2);
        int offsetPos = Random.Range(0, 2);
        int rot = 0;
        float spawnPosX = transform.position.x;

        if (Physics.Raycast(CheckUnderSpawner, out hit, 2))
        {
            if (hit.transform.tag == "Mino")
            {
                if (!Physics.Raycast(CheckUnderSpawnerLeft, out hit, 2))
                {
                    if (offsetPos == 0)
                    {
                        spawnPosX = 2;
                    }
                }
                else if(!Physics.Raycast(CheckUnderSpawnerRight, out hit, 2))
                {
                    spawnPosX = 10;
                }

                if (!Physics.Raycast(CheckUnderSpawnerRight, out hit, 2))
                {
                    if (offsetPos == 1)
                    {
                        spawnPosX = 10;
                    }
                }
                else if (!Physics.Raycast(CheckUnderSpawnerLeft, out hit, 2))
                {
                    spawnPosX = 2;
                }
            }
        }       

        if (Physics.Raycast(CheckUnderSpawner, out hit, 2) && Physics.Raycast(CheckUnderSpawnerLeft, out hit, 2) && Physics.Raycast(CheckUnderSpawnerRight, out hit, 2))
        {
  
            transform.position = new Vector3(transform.position.x, transform.position.y + 25, transform.position.z);
  
            CheckUnderSpawner = new Ray(transform.position, Vector3.down);
            CheckUnderSpawnerLeft = new Ray(new Vector3(transform.position.x - 4, transform.position.y, transform.position.z), Vector3.down);
            CheckUnderSpawnerRight = new Ray(new Vector3(transform.position.x + 5, transform.position.y, transform.position.z), Vector3.down);
        }

        if(randomPrefab == prefabRepeat)
        {
            while (randomPrefab == prefabRepeat)
            {
                randomPrefab = Random.Range(0, 5);
            }
            
        }

        if (randomPrefab == 0 || randomPrefab == 1)
        {
            if (flipPrefab == 0)
            {
                rot = 180;
            }
            else
            {
                rot = 0;
            }
        }

        Instantiate(TetrisPrefab[randomPrefab], new Vector3(spawnPosX, transform.position.y, transform.position.z), new Quaternion(0, rot, 0, 0));

        prefabRepeat = randomPrefab;
        spawnPrefab = false;
    }

    void MoveSpawnerToPlayer ()
    {
        float PlayerPos = Player.transform.position.y;

        PlayerPos += 25;

        if(PlayerPos > transform.position.y)
        {
            transform.position = new Vector3(transform.position.x, PlayerPos, transform.position.z);
        }

        
    }

    //GUI
    void PauseGame()
    {

        if (Input.GetKeyUp("escape") && Time.timeScale == 1.0)
        {
            pauseGame = true;
        }
        else if(Input.GetKeyUp("escape") && Time.timeScale == 0)
        {
            pauseGame = false;
        }

        if(pauseGame)
        {
            Time.timeScale = 0;
            FindObjectOfType<BlockMovement>().enabled = false;
            StopUI.SetActive(false);
            PauseMenuUI.SetActive(true);

        }

        if (!pauseGame)
        {
            Time.timeScale = 1.0f;
            FindObjectOfType<BlockMovement>().enabled = true;
            StopUI.SetActive(true);
            PauseMenuUI.SetActive(false);
        }

        
    }

    public void Stop()
    {
        pauseGame = true;
    }

    public void Continue()
    {
        pauseGame = false;
    }

    public void Quit()
    {
        Application.Quit();   
    }

    public void Restart()
    {
        SceneManager.LoadScene(1);
    }

    public void MainMenu()
    {
        SceneManager.LoadScene(0);
    }

    void PlayerHeight()
    {
        playerheight = transform.position.y - 20;
        GameObject.Find("heightvalue").GetComponent<Text>().text = playerheight.ToString("F2")+" m";
    }

    void GameTime() 
    {
        gametime += 1 * Time.deltaTime;
        GameObject.Find("timevalue").GetComponent<Text>().text = gametime.ToString("F0")+" s";
    }

    void DistanceToDanger ()
    {
        distancetodanger = Player.transform.position.y - Danger.transform.position.y - 10;
        GameObject.Find("distancedanger").GetComponent<Text>().text = distancetodanger.ToString("F2") + " m";       
    }
}
