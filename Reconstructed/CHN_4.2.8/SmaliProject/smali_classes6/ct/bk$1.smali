.class final Lct/bk$1;
.super Ljava/lang/Thread;
.source "TL"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lct/bk;-><init>(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lct/bk;


# direct methods
.method constructor <init>(Lct/bk;)V
    .locals 0

    .line 25
    iput-object p1, p0, Lct/bk$1;->a:Lct/bk;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 27
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lct/bk$1;->a:Lct/bk;

    iget-object v1, v1, Lct/bk;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "libtencentloc.so"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 29
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_1

    .line 31
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 32
    iget-object v0, p0, Lct/bk$1;->a:Lct/bk;

    invoke-virtual {v0}, Lct/bk;->b()V

    :cond_1
    return-void
.end method
