.class Lcom/popcap/util/LocalPackageInfo;
.super Ljava/lang/Object;
.source "LocalPackageInfo.java"


# instance fields
.field private packageName:Ljava/lang/String;

.field private version:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPackageName()Ljava/lang/String;
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/popcap/util/LocalPackageInfo;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/popcap/util/LocalPackageInfo;->version:Ljava/lang/String;

    return-object v0
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0

    .line 9
    iput-object p1, p0, Lcom/popcap/util/LocalPackageInfo;->packageName:Ljava/lang/String;

    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 0

    .line 17
    iput-object p1, p0, Lcom/popcap/util/LocalPackageInfo;->version:Ljava/lang/String;

    return-void
.end method
