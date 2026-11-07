.class public Lcom/volcengine/zeus/download/PluginDownloadBean;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ERROR_EXCEPTION:I = 0x5

.field public static final ERROR_NET_OFF:I = 0x1

.field public static final ERROR_NO_DATA:I = 0x4

.field public static final ERROR_RESPONSE_EMPTY:I = 0x2

.field public static final ERROR_RESPONSE_INTERCEPT:I = 0x3

.field public static final ERROR_SHOULD_NOT_DOWNLOAD:I = 0x6


# instance fields
.field public extraInfo:Ljava/lang/String;

.field public mApiVersionMax:I

.field public mApiVersionMin:I

.field public mBackupUrlList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mCustomMsg:Ljava/lang/String;

.field public mErrorCode:I

.field public mFlag:I

.field public mFollowId:J

.field public mMd5:Ljava/lang/String;

.field public mPackageName:Ljava/lang/String;

.field public mUrl:Ljava/lang/String;

.field public mVersionCode:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 39
    iput v0, p0, Lcom/volcengine/zeus/download/PluginDownloadBean;->mApiVersionMin:I

    const v1, 0x7fffffff

    .line 41
    iput v1, p0, Lcom/volcengine/zeus/download/PluginDownloadBean;->mApiVersionMax:I

    .line 59
    iput v0, p0, Lcom/volcengine/zeus/download/PluginDownloadBean;->mErrorCode:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 39
    iput v0, p0, Lcom/volcengine/zeus/download/PluginDownloadBean;->mApiVersionMin:I

    const v0, 0x7fffffff

    .line 41
    iput v0, p0, Lcom/volcengine/zeus/download/PluginDownloadBean;->mApiVersionMax:I

    .line 54
    iput-object p1, p0, Lcom/volcengine/zeus/download/PluginDownloadBean;->mPackageName:Ljava/lang/String;

    .line 55
    iput p2, p0, Lcom/volcengine/zeus/download/PluginDownloadBean;->mErrorCode:I

    return-void
.end method


# virtual methods
.method public hasResult()Z
    .locals 1

    .line 63
    iget v0, p0, Lcom/volcengine/zeus/download/PluginDownloadBean;->mErrorCode:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isRevert()Z
    .locals 2

    .line 50
    iget v0, p0, Lcom/volcengine/zeus/download/PluginDownloadBean;->mFlag:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isUnInstall()Z
    .locals 2

    .line 46
    iget v0, p0, Lcom/volcengine/zeus/download/PluginDownloadBean;->mFlag:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PluginDownloadBean{mErrorCode="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/volcengine/zeus/download/PluginDownloadBean;->mErrorCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mFollowId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/volcengine/zeus/download/PluginDownloadBean;->mFollowId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mPackageName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/volcengine/zeus/download/PluginDownloadBean;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mVersionCode="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/volcengine/zeus/download/PluginDownloadBean;->mVersionCode:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mUrl=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/volcengine/zeus/download/PluginDownloadBean;->mUrl:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mFlag="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/volcengine/zeus/download/PluginDownloadBean;->mFlag:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mMd5=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/volcengine/zeus/download/PluginDownloadBean;->mMd5:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", extraInfo=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/volcengine/zeus/download/PluginDownloadBean;->extraInfo:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", mBackupUrlList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/volcengine/zeus/download/PluginDownloadBean;->mBackupUrlList:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mApiVersionMin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/volcengine/zeus/download/PluginDownloadBean;->mApiVersionMin:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mApiVersionMax="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/volcengine/zeus/download/PluginDownloadBean;->mApiVersionMax:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mCustomMsg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/volcengine/zeus/download/PluginDownloadBean;->mCustomMsg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
