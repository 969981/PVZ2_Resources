.class public Lcn/sharesdk/wechat/utils/WXFileObject;
.super Ljava/lang/Object;
.source "WXFileObject.java"

# interfaces
.implements Lcn/sharesdk/wechat/utils/WXMediaMessage$IMediaObject;


# instance fields
.field private contentLengthLimit:I

.field public fileData:[B

.field public filePath:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x72800000

    .line 12
    iput v0, p0, Lcn/sharesdk/wechat/utils/WXFileObject;->contentLengthLimit:I

    const/4 v0, 0x0

    .line 15
    iput-object v0, p0, Lcn/sharesdk/wechat/utils/WXFileObject;->fileData:[B

    .line 16
    iput-object v0, p0, Lcn/sharesdk/wechat/utils/WXFileObject;->filePath:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x72800000

    .line 12
    iput v0, p0, Lcn/sharesdk/wechat/utils/WXFileObject;->contentLengthLimit:I

    .line 24
    iput-object p1, p0, Lcn/sharesdk/wechat/utils/WXFileObject;->filePath:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>([B)V
    .locals 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x72800000

    .line 12
    iput v0, p0, Lcn/sharesdk/wechat/utils/WXFileObject;->contentLengthLimit:I

    .line 20
    iput-object p1, p0, Lcn/sharesdk/wechat/utils/WXFileObject;->fileData:[B

    return-void
.end method

.method private getFileSize(Ljava/lang/String;)I
    .locals 1

    .line 37
    invoke-static {}, Lcn/sharesdk/wechat/utils/n;->a()Lcn/sharesdk/wechat/utils/n;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/sharesdk/wechat/utils/n;->a(Ljava/lang/String;)I

    move-result p1

    return p1
.end method


# virtual methods
.method public checkArgs()Z
    .locals 5

    .line 60
    iget-object v0, p0, Lcn/sharesdk/wechat/utils/WXFileObject;->fileData:[B

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    array-length v0, v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcn/sharesdk/wechat/utils/WXFileObject;->filePath:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 61
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 65
    :cond_1
    iget-object v0, p0, Lcn/sharesdk/wechat/utils/WXFileObject;->fileData:[B

    if-eqz v0, :cond_2

    array-length v0, v0

    iget v2, p0, Lcn/sharesdk/wechat/utils/WXFileObject;->contentLengthLimit:I

    if-le v0, v2, :cond_2

    .line 66
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object v0

    const-string v2, "checkArgs fail, fileData is too large"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    return v1

    .line 69
    :cond_2
    iget-object v0, p0, Lcn/sharesdk/wechat/utils/WXFileObject;->filePath:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 72
    :try_start_0
    invoke-direct {p0, v0}, Lcn/sharesdk/wechat/utils/WXFileObject;->getFileSize(Ljava/lang/String;)I

    move-result v0

    iget v2, p0, Lcn/sharesdk/wechat/utils/WXFileObject;->contentLengthLimit:I

    if-le v0, v2, :cond_3

    .line 73
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object v0

    const-string v2, "checkArgs fail, fileSize is too large"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v1

    :catchall_0
    move-exception v0

    .line 77
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, " WXAppExendObject catch don\'t worry will be two style "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v3, "ShareSDK"

    invoke-virtual {v2, v3, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 79
    invoke-static {}, Lcn/sharesdk/wechat/utils/n;->a()Lcn/sharesdk/wechat/utils/n;

    move-result-object v0

    iget-object v2, p0, Lcn/sharesdk/wechat/utils/WXFileObject;->filePath:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcn/sharesdk/wechat/utils/n;->a(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_3

    .line 81
    iget v2, p0, Lcn/sharesdk/wechat/utils/WXFileObject;->contentLengthLimit:I

    if-le v0, v2, :cond_3

    return v1

    :cond_3
    const/4 v0, 0x1

    return v0

    .line 62
    :cond_4
    :goto_0
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object v0

    const-string v2, "checkArgs fail, both arguments is null"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    return v1
.end method

.method public serialize(Landroid/os/Bundle;)V
    .locals 2

    .line 41
    const-string v0, "_wxfileobject_fileData"

    iget-object v1, p0, Lcn/sharesdk/wechat/utils/WXFileObject;->fileData:[B

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 42
    const-string v0, "_wxfileobject_filePath"

    iget-object v1, p0, Lcn/sharesdk/wechat/utils/WXFileObject;->filePath:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setContentLengthLimit(I)V
    .locals 0

    .line 56
    iput p1, p0, Lcn/sharesdk/wechat/utils/WXFileObject;->contentLengthLimit:I

    return-void
.end method

.method public setFileData([B)V
    .locals 0

    .line 28
    iput-object p1, p0, Lcn/sharesdk/wechat/utils/WXFileObject;->fileData:[B

    return-void
.end method

.method public setFilePath(Ljava/lang/String;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lcn/sharesdk/wechat/utils/WXFileObject;->filePath:Ljava/lang/String;

    return-void
.end method

.method public type()I
    .locals 1

    const/4 v0, 0x6

    return v0
.end method

.method public unserialize(Landroid/os/Bundle;)V
    .locals 1

    .line 46
    const-string v0, "_wxfileobject_fileData"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/wechat/utils/WXFileObject;->fileData:[B

    .line 47
    const-string v0, "_wxfileobject_filePath"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcn/sharesdk/wechat/utils/WXFileObject;->filePath:Ljava/lang/String;

    return-void
.end method
