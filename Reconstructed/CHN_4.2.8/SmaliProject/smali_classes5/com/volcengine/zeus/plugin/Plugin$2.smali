.class public final Lcom/volcengine/zeus/plugin/Plugin$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/FileFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/volcengine/zeus/plugin/Plugin;->getInstalledMaxVer()I
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

    .line 457
    iput-object p1, p0, Lcom/volcengine/zeus/plugin/Plugin$2;->aMG:Lcom/volcengine/zeus/plugin/Plugin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/io/File;)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 460
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "^version-(\\d+)$"

    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
