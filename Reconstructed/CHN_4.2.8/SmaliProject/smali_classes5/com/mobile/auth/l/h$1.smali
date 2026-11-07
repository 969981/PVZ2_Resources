.class final Lcom/mobile/auth/l/h$1;
.super Lcom/mobile/auth/l/n$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mobile/auth/l/h;->a(Landroid/content/Context;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mobile/auth/l/h$1;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/mobile/auth/l/h$1;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/mobile/auth/l/h$1;->c:Ljava/lang/String;

    invoke-direct {p0}, Lcom/mobile/auth/l/n$a;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 5

    const-string v0, "PhoneScripUtils"

    const-string v1, "start save scrip to sp in sub thread"

    invoke-static {v0, v1}, Lcom/mobile/auth/l/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mobile/auth/l/h$1;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/mobile/auth/l/h$1;->b:Ljava/lang/String;

    invoke-static {}, Lcom/mobile/auth/l/h;->b()J

    move-result-wide v2

    iget-object v4, p0, Lcom/mobile/auth/l/h$1;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/mobile/auth/l/h;->a(Landroid/content/Context;Ljava/lang/String;JLjava/lang/String;)V

    return-void
.end method
