.class public Lcom/mob/tools/a/c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mob/tools/a/c$a;
    }
.end annotation


# static fields
.field private static a:Lcom/mob/tools/a/c;


# instance fields
.field private volatile b:Landroid/content/Context;

.field private volatile c:Lcom/mob/tools/a/a;

.field private volatile d:Lcom/mob/tools/a/a;

.field private volatile e:Lcom/mob/tools/a/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 13
    new-instance v0, Lcom/mob/tools/a/c;

    invoke-direct {v0}, Lcom/mob/tools/a/c;-><init>()V

    sput-object v0, Lcom/mob/tools/a/c;->a:Lcom/mob/tools/a/c;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/mob/tools/a/c;
    .locals 1

    .line 20
    sget-object v0, Lcom/mob/tools/a/c;->a:Lcom/mob/tools/a/c;

    iget-object v0, v0, Lcom/mob/tools/a/c;->b:Landroid/content/Context;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    .line 21
    sget-object v0, Lcom/mob/tools/a/c;->a:Lcom/mob/tools/a/c;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    iput-object p0, v0, Lcom/mob/tools/a/c;->b:Landroid/content/Context;

    .line 23
    :cond_0
    sget-object p0, Lcom/mob/tools/a/c;->a:Lcom/mob/tools/a/c;

    return-object p0
.end method


# virtual methods
.method public a()Lcom/mob/tools/a/a;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/mob/tools/a/c;->c:Lcom/mob/tools/a/a;

    if-nez v0, :cond_0

    .line 32
    invoke-virtual {p0}, Lcom/mob/tools/a/c;->b()Lcom/mob/tools/a/a;

    move-result-object v0

    return-object v0

    .line 34
    :cond_0
    iget-object v0, p0, Lcom/mob/tools/a/c;->c:Lcom/mob/tools/a/a;

    return-object v0
.end method

.method public a(Lcom/mob/tools/a/a;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/mob/tools/a/c;->c:Lcom/mob/tools/a/a;

    return-void
.end method

.method public b()Lcom/mob/tools/a/a;
    .locals 2

    .line 38
    iget-object v0, p0, Lcom/mob/tools/a/c;->d:Lcom/mob/tools/a/a;

    if-nez v0, :cond_0

    .line 39
    new-instance v0, Lcom/mob/tools/a/c$a;

    iget-object v1, p0, Lcom/mob/tools/a/c;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/mob/tools/a/c$a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mob/tools/a/c;->d:Lcom/mob/tools/a/a;

    .line 41
    :cond_0
    iget-object v0, p0, Lcom/mob/tools/a/c;->d:Lcom/mob/tools/a/a;

    return-object v0
.end method

.method public c()Lcom/mob/tools/a/a;
    .locals 2

    .line 45
    iget-object v0, p0, Lcom/mob/tools/a/c;->e:Lcom/mob/tools/a/a;

    if-nez v0, :cond_0

    .line 46
    new-instance v0, Lcom/mob/tools/a/e;

    iget-object v1, p0, Lcom/mob/tools/a/c;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/mob/tools/a/e;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mob/tools/a/c;->e:Lcom/mob/tools/a/a;

    .line 48
    :cond_0
    iget-object v0, p0, Lcom/mob/tools/a/c;->e:Lcom/mob/tools/a/a;

    return-object v0
.end method
