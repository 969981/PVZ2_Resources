.class public Lcom/mobile/auth/c/n;
.super Ljava/lang/Object;


# instance fields
.field public a:I

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Z

.field public e:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/mobile/auth/c/n;->a:I

    const-string v0, ""

    iput-object v0, p0, Lcom/mobile/auth/c/n;->c:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mobile/auth/c/n;->d:Z

    const-string v0, "1"

    iput-object v0, p0, Lcom/mobile/auth/c/n;->e:Ljava/lang/String;

    return-void
.end method
