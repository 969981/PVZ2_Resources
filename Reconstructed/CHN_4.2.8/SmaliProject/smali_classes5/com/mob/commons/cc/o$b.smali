.class public Lcom/mob/commons/cc/o$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mob/commons/cc/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field private a:Lcom/mob/commons/cc/o$c;


# direct methods
.method private constructor <init>(Ljava/lang/Object;)V
    .locals 2

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Lcom/mob/commons/cc/o$c;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/mob/commons/cc/o$c;-><init>(Ljava/lang/Object;Lcom/mob/commons/cc/o$1;)V

    iput-object v0, p0, Lcom/mob/commons/cc/o$b;->a:Lcom/mob/commons/cc/o$c;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/Object;Lcom/mob/commons/cc/o$1;)V
    .locals 0

    .line 45
    invoke-direct {p0, p1}, Lcom/mob/commons/cc/o$b;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Lcom/mob/commons/cc/o$b;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/mob/commons/cc/o$b;->a:Lcom/mob/commons/cc/o$c;

    invoke-static {v0, p1}, Lcom/mob/commons/cc/o$c;->a(Lcom/mob/commons/cc/o$c;Ljava/lang/Object;)V

    return-object p0
.end method

.method public a(Ljava/lang/String;Ljava/lang/Class;)Lcom/mob/commons/cc/o$c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/mob/commons/cc/o$c;"
        }
    .end annotation

    .line 62
    iget-object v0, p0, Lcom/mob/commons/cc/o$b;->a:Lcom/mob/commons/cc/o$c;

    invoke-virtual {v0, p1, p2}, Lcom/mob/commons/cc/o$c;->a(Ljava/lang/String;Ljava/lang/Class;)Lcom/mob/commons/cc/o$c;

    move-result-object p1

    return-object p1
.end method
