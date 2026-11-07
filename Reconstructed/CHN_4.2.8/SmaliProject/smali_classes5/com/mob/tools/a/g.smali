.class public Lcom/mob/tools/a/g;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/mob/tools/a/g;


# instance fields
.field private volatile b:Landroid/content/Context;

.field private volatile c:Lcom/mob/tools/a/f;

.field private volatile d:Lcom/mob/tools/a/f;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 6
    new-instance v0, Lcom/mob/tools/a/g;

    invoke-direct {v0}, Lcom/mob/tools/a/g;-><init>()V

    sput-object v0, Lcom/mob/tools/a/g;->a:Lcom/mob/tools/a/g;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/mob/tools/a/g;
    .locals 1

    .line 12
    sget-object v0, Lcom/mob/tools/a/g;->a:Lcom/mob/tools/a/g;

    iget-object v0, v0, Lcom/mob/tools/a/g;->b:Landroid/content/Context;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    .line 13
    sget-object v0, Lcom/mob/tools/a/g;->a:Lcom/mob/tools/a/g;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    iput-object p0, v0, Lcom/mob/tools/a/g;->b:Landroid/content/Context;

    .line 15
    :cond_0
    sget-object p0, Lcom/mob/tools/a/g;->a:Lcom/mob/tools/a/g;

    return-object p0
.end method


# virtual methods
.method public a()Lcom/mob/tools/a/f;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/mob/tools/a/g;->c:Lcom/mob/tools/a/f;

    if-nez v0, :cond_0

    .line 24
    invoke-virtual {p0}, Lcom/mob/tools/a/g;->b()Lcom/mob/tools/a/f;

    move-result-object v0

    return-object v0

    .line 26
    :cond_0
    iget-object v0, p0, Lcom/mob/tools/a/g;->c:Lcom/mob/tools/a/f;

    return-object v0
.end method

.method public a(Lcom/mob/tools/a/f;)V
    .locals 0

    .line 19
    iput-object p1, p0, Lcom/mob/tools/a/g;->c:Lcom/mob/tools/a/f;

    return-void
.end method

.method public b()Lcom/mob/tools/a/f;
    .locals 2

    .line 30
    iget-object v0, p0, Lcom/mob/tools/a/g;->d:Lcom/mob/tools/a/f;

    if-nez v0, :cond_0

    .line 31
    new-instance v0, Lcom/mob/tools/a/d;

    iget-object v1, p0, Lcom/mob/tools/a/g;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/mob/tools/a/d;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mob/tools/a/g;->d:Lcom/mob/tools/a/f;

    .line 33
    :cond_0
    iget-object v0, p0, Lcom/mob/tools/a/g;->d:Lcom/mob/tools/a/f;

    return-object v0
.end method
