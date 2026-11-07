.class final Lct/cb$1;
.super Ljava/lang/Object;
.source "TL"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lct/cb;-><init>(Lct/be;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lct/cb;


# direct methods
.method constructor <init>(Lct/cb;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lct/cb$1;->a:Lct/cb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 92
    iget-object v0, p0, Lct/cb$1;->a:Lct/cb;

    invoke-static {v0}, Lct/cb;->a(Lct/cb;)Z

    .line 97
    iget-object v0, p0, Lct/cb$1;->a:Lct/cb;

    invoke-static {v0}, Lct/cb;->b(Lct/cb;)Lct/be;

    move-result-object v1

    invoke-virtual {v1}, Lct/be;->h()Lct/bf;

    move-result-object v1

    iget-wide v1, v1, Lct/bf;->k:J

    invoke-static {v0, v1, v2}, Lct/cb;->a(Lct/cb;J)V

    return-void
.end method
