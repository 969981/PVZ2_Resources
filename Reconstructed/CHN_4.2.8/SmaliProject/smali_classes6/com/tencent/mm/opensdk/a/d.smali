.class final Lcom/tencent/mm/opensdk/a/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic F:Lcom/tencent/mm/opensdk/a/b;

.field final synthetic G:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/tencent/mm/opensdk/a/b;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/opensdk/a/d;->F:Lcom/tencent/mm/opensdk/a/b;

    iput-object p2, p0, Lcom/tencent/mm/opensdk/a/d;->G:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/opensdk/a/d;->G:Ljava/util/List;

    invoke-static {v0}, Lcom/tencent/mm/opensdk/a/b;->c(Ljava/util/List;)V

    return-void
.end method
