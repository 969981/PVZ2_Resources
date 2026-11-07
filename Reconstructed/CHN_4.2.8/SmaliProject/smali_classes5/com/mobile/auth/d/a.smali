.class public Lcom/mobile/auth/d/a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mobile/auth/d/a$a;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Z

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:Z

.field private k:I

.field private l:I


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "rcs.cmpassport.com"

    iput-object v0, p0, Lcom/mobile/auth/d/a;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/mobile/auth/d/a;->b:Ljava/lang/String;

    const-string v0, "config2.cmpassport.com"

    iput-object v0, p0, Lcom/mobile/auth/d/a;->c:Ljava/lang/String;

    const-string v0, "log2.cmpassport.com:9443"

    iput-object v0, p0, Lcom/mobile/auth/d/a;->d:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mobile/auth/d/a;->e:Z

    iput-boolean v0, p0, Lcom/mobile/auth/d/a;->f:Z

    iput-boolean v0, p0, Lcom/mobile/auth/d/a;->g:Z

    iput-boolean v0, p0, Lcom/mobile/auth/d/a;->h:Z

    iput-boolean v0, p0, Lcom/mobile/auth/d/a;->i:Z

    iput-boolean v0, p0, Lcom/mobile/auth/d/a;->j:Z

    const/4 v0, 0x3

    iput v0, p0, Lcom/mobile/auth/d/a;->k:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/mobile/auth/d/a;->l:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/mobile/auth/d/a$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/mobile/auth/d/a;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/mobile/auth/d/a;I)I
    .locals 0

    iput p1, p0, Lcom/mobile/auth/d/a;->k:I

    return p1
.end method

.method static synthetic a(Lcom/mobile/auth/d/a;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/mobile/auth/d/a;->a:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/mobile/auth/d/a;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/mobile/auth/d/a;->e:Z

    return p1
.end method

.method static synthetic b(Lcom/mobile/auth/d/a;I)I
    .locals 0

    iput p1, p0, Lcom/mobile/auth/d/a;->l:I

    return p1
.end method

.method static synthetic b(Lcom/mobile/auth/d/a;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/mobile/auth/d/a;->b:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lcom/mobile/auth/d/a;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/mobile/auth/d/a;->f:Z

    return p1
.end method

.method static synthetic c(Lcom/mobile/auth/d/a;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/mobile/auth/d/a;->c:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic c(Lcom/mobile/auth/d/a;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/mobile/auth/d/a;->g:Z

    return p1
.end method

.method static synthetic d(Lcom/mobile/auth/d/a;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/mobile/auth/d/a;->d:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic d(Lcom/mobile/auth/d/a;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/mobile/auth/d/a;->h:Z

    return p1
.end method

.method static synthetic e(Lcom/mobile/auth/d/a;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/mobile/auth/d/a;->i:Z

    return p1
.end method

.method static synthetic f(Lcom/mobile/auth/d/a;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/mobile/auth/d/a;->j:Z

    return p1
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mobile/auth/d/a;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mobile/auth/d/a;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mobile/auth/d/a;->c:Ljava/lang/String;

    return-object v0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/mobile/auth/d/a;->m()Lcom/mobile/auth/d/a;

    move-result-object v0

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mobile/auth/d/a;->d:Ljava/lang/String;

    return-object v0
.end method

.method public e()Z
    .locals 1

    iget-boolean v0, p0, Lcom/mobile/auth/d/a;->e:Z

    return v0
.end method

.method public f()Z
    .locals 1

    iget-boolean v0, p0, Lcom/mobile/auth/d/a;->f:Z

    return v0
.end method

.method public g()Z
    .locals 1

    iget-boolean v0, p0, Lcom/mobile/auth/d/a;->g:Z

    return v0
.end method

.method public h()Z
    .locals 1

    iget-boolean v0, p0, Lcom/mobile/auth/d/a;->h:Z

    return v0
.end method

.method public i()Z
    .locals 1

    iget-boolean v0, p0, Lcom/mobile/auth/d/a;->i:Z

    return v0
.end method

.method public j()Z
    .locals 1

    iget-boolean v0, p0, Lcom/mobile/auth/d/a;->j:Z

    return v0
.end method

.method public k()I
    .locals 1

    iget v0, p0, Lcom/mobile/auth/d/a;->k:I

    return v0
.end method

.method public l()I
    .locals 1

    iget v0, p0, Lcom/mobile/auth/d/a;->l:I

    return v0
.end method

.method public m()Lcom/mobile/auth/d/a;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mobile/auth/d/a;

    return-object v0
.end method
