.class public Lcom/popcap/network/PCPNetWork;
.super Ljava/lang/Object;
.source "PCPNetWork.java"


# static fields
.field public static sUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static GetNetData(Ljava/util/Map;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 13
    sget-object v0, Lcom/popcap/network/PCPNetWork;->sUrl:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 15
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/String;-><init>()V

    return-object p0

    .line 17
    :cond_0
    invoke-static {v0, p0}, Lcom/popcap/util/NetWorkHttp;->HttpReq(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0

    .line 18
    invoke-static {p0}, Lcom/popcap/util/NtfUtil;->SaveLogServer(Ljava/lang/String;)V

    return-object p0
.end method

.method public static SetURl(Ljava/lang/String;)V
    .locals 0

    .line 23
    sput-object p0, Lcom/popcap/network/PCPNetWork;->sUrl:Ljava/lang/String;

    return-void
.end method
