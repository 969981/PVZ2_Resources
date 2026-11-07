.class public final Lcom/volcengine/zeus/plugin/Plugin$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/FileFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/volcengine/zeus/plugin/Plugin;->deleteInstalledPlugin()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic aMG:Lcom/volcengine/zeus/plugin/Plugin;


# direct methods
.method constructor <init>(Lcom/volcengine/zeus/plugin/Plugin;)V
    .locals 0

    .line 547
    iput-object p1, p0, Lcom/volcengine/zeus/plugin/Plugin$3;->aMG:Lcom/volcengine/zeus/plugin/Plugin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/io/File;)Z
    .locals 3

    .line 550
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "^version-(\\d+)$"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 551
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "-"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    aget-object p1, p1, v0

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 552
    invoke-static {}, Lgbsdk/common/host/acam;->hY()Lgbsdk/common/host/acam;

    move-result-object v0

    iget-object v2, p0, Lcom/volcengine/zeus/plugin/Plugin$3;->aMG:Lcom/volcengine/zeus/plugin/Plugin;

    iget-object v2, v2, Lcom/volcengine/zeus/plugin/Plugin;->mPkgName:Ljava/lang/String;

    invoke-virtual {v0, v2, p1, v1}, Lgbsdk/common/host/acam;->a(Ljava/lang/String;IZ)V

    :cond_0
    return v1
.end method
