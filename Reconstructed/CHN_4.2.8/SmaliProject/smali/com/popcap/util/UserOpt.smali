.class public Lcom/popcap/util/UserOpt;
.super Ljava/lang/Object;
.source "UserOpt.java"


# static fields
.field public static sUserOpt:Lcom/popcap/util/UserOpt;


# instance fields
.field private vSkuUserOpts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/popcap/util/SkuUserOpt;",
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

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 108
    iput-object v0, p0, Lcom/popcap/util/UserOpt;->vSkuUserOpts:Ljava/util/ArrayList;

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/popcap/util/UserOpt;->vSkuUserOpts:Ljava/util/ArrayList;

    .line 19
    invoke-direct {p0}, Lcom/popcap/util/UserOpt;->Init()V

    return-void
.end method

.method private Init()V
    .locals 5

    .line 47
    invoke-static {}, Lcom/popcap/util/PCPLocalGameMgr;->Instance()Lcom/popcap/util/PCPLocalGameMgr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/popcap/util/PCPLocalGameMgr;->GetSkuIdList()Ljava/util/ArrayList;

    move-result-object v0

    .line 48
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 50
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ulstOpt"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/popcap/util/NtfUtil;->GetLocalString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 51
    new-instance v3, Lcom/popcap/util/SkuUserOpt;

    invoke-direct {v3}, Lcom/popcap/util/SkuUserOpt;-><init>()V

    .line 52
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-direct {p0, v4, v2}, Lcom/popcap/util/UserOpt;->ParserDate(ILjava/lang/String;)Ljava/util/Date;

    move-result-object v2

    iput-object v2, v3, Lcom/popcap/util/SkuUserOpt;->dOptDate:Ljava/util/Date;

    .line 53
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v3, Lcom/popcap/util/SkuUserOpt;->nSkuId:I

    .line 54
    iget-object v2, p0, Lcom/popcap/util/UserOpt;->vSkuUserOpts:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "----- skuId = "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " optdate = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v3, Lcom/popcap/util/SkuUserOpt;->dOptDate:Ljava/util/Date;

    invoke-virtual {v2}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/popcap/util/NtfUtil;->SaveLogServer(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static Instance()Lcom/popcap/util/UserOpt;
    .locals 1

    .line 23
    sget-object v0, Lcom/popcap/util/UserOpt;->sUserOpt:Lcom/popcap/util/UserOpt;

    if-nez v0, :cond_0

    .line 24
    new-instance v0, Lcom/popcap/util/UserOpt;

    invoke-direct {v0}, Lcom/popcap/util/UserOpt;-><init>()V

    sput-object v0, Lcom/popcap/util/UserOpt;->sUserOpt:Lcom/popcap/util/UserOpt;

    .line 25
    :cond_0
    sget-object v0, Lcom/popcap/util/UserOpt;->sUserOpt:Lcom/popcap/util/UserOpt;

    return-object v0
.end method

.method private ParserDate(ILjava/lang/String;)Ljava/util/Date;
    .locals 1

    .line 31
    const-string v0, "none"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 33
    invoke-virtual {p0, p1}, Lcom/popcap/util/UserOpt;->UpateUserOpt(I)V

    .line 34
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    return-object p1

    .line 36
    :cond_0
    new-instance p1, Ljava/text/SimpleDateFormat;

    const-string v0, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {p1, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 38
    :try_start_0
    invoke-virtual {p1, p2}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 40
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 41
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    :goto_0
    return-object p1
.end method


# virtual methods
.method public GetOptArray()Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/popcap/util/SkuUserOpt;",
            ">;"
        }
    .end annotation

    .line 75
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 76
    iget-object v1, p0, Lcom/popcap/util/UserOpt;->vSkuUserOpts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 80
    iget-object v0, p0, Lcom/popcap/util/UserOpt;->vSkuUserOpts:Ljava/util/ArrayList;

    return-object v0

    .line 76
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/popcap/util/SkuUserOpt;

    .line 78
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    iget-object v5, v2, Lcom/popcap/util/SkuUserOpt;->dOptDate:Ljava/util/Date;

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    sub-long/2addr v3, v5

    iput-wide v3, v2, Lcom/popcap/util/SkuUserOpt;->ndisTime:J

    goto :goto_0
.end method

.method public GetSkuOptDis(I)J
    .locals 4

    .line 84
    iget-object v0, p0, Lcom/popcap/util/UserOpt;->vSkuUserOpts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    .line 92
    const-string p1, "error ++++++++++++ GetSkuOptDis "

    invoke-static {p1}, Lcom/popcap/util/NtfUtil;->SaveLogServer(Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    return-wide v0

    .line 84
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/popcap/util/SkuUserOpt;

    .line 86
    iget v2, v1, Lcom/popcap/util/SkuUserOpt;->nSkuId:I

    if-ne v2, p1, :cond_0

    .line 88
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    .line 89
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    iget-object p1, v1, Lcom/popcap/util/SkuUserOpt;->dOptDate:Ljava/util/Date;

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    sub-long/2addr v2, v0

    return-wide v2
.end method

.method public GetSkuUserOpt(I)Lcom/popcap/util/SkuUserOpt;
    .locals 3

    .line 98
    iget-object v0, p0, Lcom/popcap/util/UserOpt;->vSkuUserOpts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 p1, 0x0

    return-object p1

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/popcap/util/SkuUserOpt;

    .line 100
    iget v2, v1, Lcom/popcap/util/SkuUserOpt;->nSkuId:I

    if-ne v2, p1, :cond_0

    return-object v1
.end method

.method public UpateUserOpt(I)V
    .locals 2

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ulstOpt"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 63
    invoke-static {}, Lcom/popcap/util/NtfUtil;->GetLocalTime()Ljava/lang/String;

    move-result-object v1

    .line 64
    invoke-static {v0, v1}, Lcom/popcap/util/NtfUtil;->SaveDatalocal(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    invoke-virtual {p0, p1}, Lcom/popcap/util/UserOpt;->GetSkuUserOpt(I)Lcom/popcap/util/SkuUserOpt;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 67
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    iput-object p1, v0, Lcom/popcap/util/SkuUserOpt;->dOptDate:Ljava/util/Date;

    goto :goto_0

    .line 70
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "UpateUserOpt  no this skuId = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/popcap/util/NtfUtil;->SaveLogServer(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
