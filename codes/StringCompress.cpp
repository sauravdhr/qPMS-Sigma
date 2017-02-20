//letterToInt[i] means a unique id for each character of the alphabet;
//Here, 
//letterToInt['A']=0;
//letterToInt['B']=1;
//letterToInt['C']=2;
//letterToInt['D']=3;

struct CompressedlMer
{
    unsigned int **cs;//[2][32];
    int l;
    CompressedlMer(char *string, int start, int l)    {//constructor
        int group = 0;    
        int intPerGroup = ceil(l/sizeof(unsigned int));
        int temp = l;
        while(temp)    {
            group++;
            temp = temp/2;
        }
        cs = new unsigned int*[group];
        for(int i = 0; i < group; i++)
            cs[i] = new unsigned int[intPerGroup];
            
        for(int i = 0; i < l; i++)    {
            int j = letterToInt[string[start+i]];
            int positionMask = 1<<(i%sizeof(unsigned int));
            int intNo = i/sizeof(unsigned int);
            int grp = 0;
            while(j>0)    {
                if(j&1) cs[grp][intNo] = cs[grp][intNo] | positionMask;
                j = j/2;
                grp++;
            }
        }
    }
    
    ~CompressedlMer()    {//destructor
        for(int i = 0,j=1; j < l; i++,j*=2)    {
            delete [] cs[i];
        }
        delete [] cs;
    }
};

int hammingDist(const CompressedlMer &sa, const CompressedlMer &sb)    {
    int intPerGroup = ceil(sa.l/sizeof(unsigned int));
    int hamDist = 0;
    for(int i = 0; i < intPerGroup; i++)    {
        unsigned int flag = ~(0);    //all bits are set to 1
        for(int group = 0, j = 1; j < sa.l; group++, j*=2)    {
            flag = flag | (sa.cs[group][i]^sb.cs[group][i]);
        }
        hamDist = hamDist + __builtin_popcount(flag);
    }
    return hamDist;
}
