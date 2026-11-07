.class public Lcom/popcap/util/PCPLocalGameMgr;
.super Ljava/lang/Object;
.source "PCPLocalGameMgr.java"


# static fields
.field public static m_PcpLocalGameMgr:Lcom/popcap/util/PCPLocalGameMgr;


# instance fields
.field private IdMapPackage:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private popcapGameList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/popcap/util/LocalPackageInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 137
    iput-object v0, p0, Lcom/popcap/util/PCPLocalGameMgr;->IdMapPackage:Ljava/util/Map;

    .line 139
    iput-object v0, p0, Lcom/popcap/util/PCPLocalGameMgr;->popcapGameList:Ljava/util/List;

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/popcap/util/PCPLocalGameMgr;->popcapGameList:Ljava/util/List;

    .line 23
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/popcap/util/PCPLocalGameMgr;->IdMapPackage:Ljava/util/Map;

    return-void
.end method

.method public static Instance()Lcom/popcap/util/PCPLocalGameMgr;
    .locals 1

    .line 27
    sget-object v0, Lcom/popcap/util/PCPLocalGameMgr;->m_PcpLocalGameMgr:Lcom/popcap/util/PCPLocalGameMgr;

    if-nez v0, :cond_0

    .line 28
    new-instance v0, Lcom/popcap/util/PCPLocalGameMgr;

    invoke-direct {v0}, Lcom/popcap/util/PCPLocalGameMgr;-><init>()V

    sput-object v0, Lcom/popcap/util/PCPLocalGameMgr;->m_PcpLocalGameMgr:Lcom/popcap/util/PCPLocalGameMgr;

    .line 30
    :cond_0
    sget-object v0, Lcom/popcap/util/PCPLocalGameMgr;->m_PcpLocalGameMgr:Lcom/popcap/util/PCPLocalGameMgr;

    return-object v0
.end method


# virtual methods
.method public AddPackId(ILjava/lang/String;)V
    .locals 2

    .line 49
    iget-object v0, p0, Lcom/popcap/util/PCPLocalGameMgr;->IdMapPackage:Ljava/util/Map;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public ClearIdMap()V
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/popcap/util/PCPLocalGameMgr;->IdMapPackage:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public Get(I)Lcom/popcap/util/LocalPackageInfo;
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/popcap/util/PCPLocalGameMgr;->popcapGameList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/popcap/util/LocalPackageInfo;

    return-object p1
.end method

.method public GetExistPopcapGame()V
    .locals 5

    .line 85
    iget-object v0, p0, Lcom/popcap/util/PCPLocalGameMgr;->popcapGameList:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    .line 88
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 89
    invoke-static {}, Lcom/popcap/util/NtfUtil;->GetPCPService()Lcom/popcap/util/PopCapDaemonService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/popcap/util/PopCapDaemonService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    .line 90
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v0

    .line 91
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lt v1, v2, :cond_1

    return-void

    .line 92
    :cond_1
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageInfo;

    .line 94
    iget-object v3, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {}, Lcom/popcap/util/NtfUtil;->GetPakcName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 97
    new-instance v3, Lcom/popcap/util/LocalPackageInfo;

    invoke-direct {v3}, Lcom/popcap/util/LocalPackageInfo;-><init>()V

    .line 98
    iget-object v4, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/popcap/util/LocalPackageInfo;->setPackageName(Ljava/lang/String;)V

    .line 99
    iget-object v2, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v3, v2}, Lcom/popcap/util/LocalPackageInfo;->setVersion(Ljava/lang/String;)V

    .line 100
    iget-object v2, p0, Lcom/popcap/util/PCPLocalGameMgr;->popcapGameList:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public GetGameId(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 3

    .line 34
    iget-object v0, p0, Lcom/popcap/util/PCPLocalGameMgr;->IdMapPackage:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 35
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 36
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 p1, 0x0

    return-object p1

    .line 37
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 38
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    .line 39
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 40
    check-cast v1, Ljava/lang/String;

    .line 41
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 42
    check-cast v2, Ljava/lang/Integer;

    return-object v2
.end method

.method public GetGameListCount()I
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/popcap/util/PCPLocalGameMgr;->popcapGameList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public GetLocalIdArray()Lorg/json/JSONArray;
    .locals 6

    .line 114
    invoke-virtual {p0}, Lcom/popcap/util/PCPLocalGameMgr;->GetExistPopcapGame()V

    .line 115
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    const/4 v1, 0x0

    .line 117
    :goto_0
    iget-object v2, p0, Lcom/popcap/util/PCPLocalGameMgr;->popcapGameList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v1, v2, :cond_0

    return-object v0

    .line 118
    :cond_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 119
    iget-object v3, p0, Lcom/popcap/util/PCPLocalGameMgr;->popcapGameList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/popcap/util/LocalPackageInfo;

    if-eqz v3, :cond_2

    .line 121
    invoke-virtual {v3}, Lcom/popcap/util/LocalPackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/popcap/util/PCPLocalGameMgr;->GetGameId(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    if-nez v4, :cond_1

    goto :goto_1

    .line 125
    :cond_1
    :try_start_0
    const-string v5, "s"

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v2, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 126
    const-string v4, "v"

    invoke-virtual {v3}, Lcom/popcap/util/LocalPackageInfo;->getVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 127
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 130
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public GetPackage(Ljava/lang/Integer;)Ljava/lang/String;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/popcap/util/PCPLocalGameMgr;->IdMapPackage:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public GetSkuIdList()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 54
    iget-object v1, p0, Lcom/popcap/util/PCPLocalGameMgr;->IdMapPackage:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    .line 55
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 56
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    return-object v0

    .line 58
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 59
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    .line 60
    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public IsPackgeExist(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    .line 74
    :goto_0
    iget-object v2, p0, Lcom/popcap/util/PCPLocalGameMgr;->popcapGameList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v1, v2, :cond_0

    return v0

    .line 75
    :cond_0
    iget-object v2, p0, Lcom/popcap/util/PCPLocalGameMgr;->popcapGameList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/popcap/util/LocalPackageInfo;

    if-eqz v2, :cond_1

    .line 77
    invoke-virtual {v2}, Lcom/popcap/util/LocalPackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
