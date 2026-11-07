.class public Lcom/meituan/robust/Patch;
.super Ljava/lang/Object;
.source "Patch.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private appHash:Ljava/lang/String;

.field private isAppliedSuccess:Z

.field private isSupportSubProcess:Z

.field private localPath:Ljava/lang/String;

.field private md5:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private onlySo:Z

.field private patchedClasses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/meituan/robust/PatchedClassInfo;",
            ">;"
        }
    .end annotation
.end field

.field private patchesInfoImplClassFullName:Ljava/lang/String;

.field private pluginVersion:I

.field private sdkComponent:Ljava/lang/String;

.field private tempPath:Ljava/lang/String;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 55
    iput v0, p0, Lcom/meituan/robust/Patch;->pluginVersion:I

    .line 151
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/meituan/robust/Patch;->patchedClasses:Ljava/util/List;

    .line 161
    iput-boolean v0, p0, Lcom/meituan/robust/Patch;->onlySo:Z

    return-void
.end method


# virtual methods
.method public clone()Lcom/meituan/robust/Patch;
    .locals 1

    .line 175
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meituan/robust/Patch;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 11
    invoke-virtual {p0}, Lcom/meituan/robust/Patch;->clone()Lcom/meituan/robust/Patch;

    move-result-object v0

    return-object v0
.end method

.method public delete(Ljava/lang/String;)V
    .locals 1

    .line 122
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 123
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    return-void
.end method

.method public getAppHash()Ljava/lang/String;
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/meituan/robust/Patch;->appHash:Ljava/lang/String;

    return-object v0
.end method

.method public getLocalPath()Ljava/lang/String;
    .locals 2

    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/meituan/robust/Patch;->localPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".jar"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMd5()Ljava/lang/String;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/meituan/robust/Patch;->md5:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/meituan/robust/Patch;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPatchedClasses()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/meituan/robust/PatchedClassInfo;",
            ">;"
        }
    .end annotation

    .line 154
    iget-object v0, p0, Lcom/meituan/robust/Patch;->patchedClasses:Ljava/util/List;

    return-object v0
.end method

.method public getPatchesInfoImplClassFullName()Ljava/lang/String;
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/meituan/robust/Patch;->patchesInfoImplClassFullName:Ljava/lang/String;

    return-object v0
.end method

.method public getPluginVersion()I
    .locals 1

    .line 48
    iget v0, p0, Lcom/meituan/robust/Patch;->pluginVersion:I

    return v0
.end method

.method public getSdkComponent()Ljava/lang/String;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/meituan/robust/Patch;->sdkComponent:Ljava/lang/String;

    return-object v0
.end method

.method public getTempPath()Ljava/lang/String;
    .locals 2

    .line 144
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/meituan/robust/Patch;->tempPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_temp.jar"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/meituan/robust/Patch;->url:Ljava/lang/String;

    return-object v0
.end method

.method public isAppliedSuccess()Z
    .locals 1

    .line 106
    iget-boolean v0, p0, Lcom/meituan/robust/Patch;->isAppliedSuccess:Z

    return v0
.end method

.method public isOnlySo()Z
    .locals 1

    .line 168
    iget-boolean v0, p0, Lcom/meituan/robust/Patch;->onlySo:Z

    return v0
.end method

.method public isSupportSubProcess()Z
    .locals 1

    .line 64
    iget-boolean v0, p0, Lcom/meituan/robust/Patch;->isSupportSubProcess:Z

    return v0
.end method

.method public setAppHash(Ljava/lang/String;)V
    .locals 0

    .line 139
    iput-object p1, p0, Lcom/meituan/robust/Patch;->appHash:Ljava/lang/String;

    return-void
.end method

.method public setAppliedSuccess(Z)V
    .locals 0

    .line 110
    iput-boolean p1, p0, Lcom/meituan/robust/Patch;->isAppliedSuccess:Z

    return-void
.end method

.method public setLocalPath(Ljava/lang/String;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/meituan/robust/Patch;->localPath:Ljava/lang/String;

    return-void
.end method

.method public setMd5(Ljava/lang/String;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/meituan/robust/Patch;->md5:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 18
    iput-object p1, p0, Lcom/meituan/robust/Patch;->name:Ljava/lang/String;

    return-void
.end method

.method public setOnlySo(Z)V
    .locals 0

    .line 164
    iput-boolean p1, p0, Lcom/meituan/robust/Patch;->onlySo:Z

    return-void
.end method

.method public setPatchedClasses(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/meituan/robust/PatchedClassInfo;",
            ">;)V"
        }
    .end annotation

    .line 158
    iget-object v0, p0, Lcom/meituan/robust/Patch;->patchedClasses:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public setPatchesInfoImplClassFullName(Ljava/lang/String;)V
    .locals 0

    .line 131
    iput-object p1, p0, Lcom/meituan/robust/Patch;->patchesInfoImplClassFullName:Ljava/lang/String;

    return-void
.end method

.method public setPluginVersion(I)V
    .locals 0

    .line 52
    iput p1, p0, Lcom/meituan/robust/Patch;->pluginVersion:I

    return-void
.end method

.method public setSdkComponent(Ljava/lang/String;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/meituan/robust/Patch;->sdkComponent:Ljava/lang/String;

    return-void
.end method

.method public setSupportSubProcess(Z)V
    .locals 0

    .line 68
    iput-boolean p1, p0, Lcom/meituan/robust/Patch;->isSupportSubProcess:Z

    return-void
.end method

.method public setTempPath(Ljava/lang/String;)V
    .locals 0

    .line 148
    iput-object p1, p0, Lcom/meituan/robust/Patch;->tempPath:Ljava/lang/String;

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/meituan/robust/Patch;->url:Ljava/lang/String;

    return-void
.end method
