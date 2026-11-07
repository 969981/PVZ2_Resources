.class public Lcom/mobile/auth/d/c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/mobile/auth/d/b$a;


# static fields
.field private static a:Lcom/mobile/auth/d/c;


# instance fields
.field private b:Lcom/mobile/auth/d/a;

.field private c:Lcom/mobile/auth/d/a;

.field private d:Lcom/mobile/auth/d/b;

.field private e:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mobile/auth/d/c;->e:Landroid/content/Context;

    invoke-direct {p0}, Lcom/mobile/auth/d/c;->b()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/mobile/auth/d/c;
    .locals 2

    sget-object v0, Lcom/mobile/auth/d/c;->a:Lcom/mobile/auth/d/c;

    if-nez v0, :cond_1

    const-class v0, Lcom/mobile/auth/d/c;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/mobile/auth/d/c;->a:Lcom/mobile/auth/d/c;

    if-nez v1, :cond_0

    new-instance v1, Lcom/mobile/auth/d/c;

    invoke-direct {v1, p0}, Lcom/mobile/auth/d/c;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/mobile/auth/d/c;->a:Lcom/mobile/auth/d/c;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    sget-object p0, Lcom/mobile/auth/d/c;->a:Lcom/mobile/auth/d/c;

    return-object p0
.end method

.method private b()V
    .locals 2

    const-string v0, "sdk_config_version"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/mobile/auth/l/k;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "quick_login_android_5.9.1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/mobile/auth/d/b;->a(Z)Lcom/mobile/auth/d/b;

    move-result-object v0

    iput-object v0, p0, Lcom/mobile/auth/d/c;->d:Lcom/mobile/auth/d/b;

    invoke-virtual {v0}, Lcom/mobile/auth/d/b;->b()Lcom/mobile/auth/d/a;

    move-result-object v0

    iput-object v0, p0, Lcom/mobile/auth/d/c;->b:Lcom/mobile/auth/d/a;

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/mobile/auth/d/b;->a(Z)Lcom/mobile/auth/d/b;

    move-result-object v1

    iput-object v1, p0, Lcom/mobile/auth/d/c;->d:Lcom/mobile/auth/d/b;

    invoke-virtual {v1}, Lcom/mobile/auth/d/b;->a()Lcom/mobile/auth/d/a;

    move-result-object v1

    iput-object v1, p0, Lcom/mobile/auth/d/c;->b:Lcom/mobile/auth/d/a;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/mobile/auth/d/c;->c()V

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/mobile/auth/d/c;->d:Lcom/mobile/auth/d/b;

    invoke-virtual {v0, p0}, Lcom/mobile/auth/d/b;->a(Lcom/mobile/auth/d/b$a;)V

    iget-object v0, p0, Lcom/mobile/auth/d/c;->d:Lcom/mobile/auth/d/b;

    invoke-virtual {v0}, Lcom/mobile/auth/d/b;->a()Lcom/mobile/auth/d/a;

    move-result-object v0

    iput-object v0, p0, Lcom/mobile/auth/d/c;->c:Lcom/mobile/auth/d/a;

    return-void
.end method

.method private c()V
    .locals 2

    const-string v0, "UmcConfigManager"

    const-string v1, "delete localConfig"

    invoke-static {v0, v1}, Lcom/mobile/auth/l/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mobile/auth/d/c;->d:Lcom/mobile/auth/d/b;

    invoke-virtual {v0}, Lcom/mobile/auth/d/b;->c()V

    return-void
.end method


# virtual methods
.method public a()Lcom/mobile/auth/d/a;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/mobile/auth/d/c;->b:Lcom/mobile/auth/d/a;

    invoke-virtual {v0}, Lcom/mobile/auth/d/a;->m()Lcom/mobile/auth/d/a;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    iget-object v0, p0, Lcom/mobile/auth/d/c;->c:Lcom/mobile/auth/d/a;

    return-object v0
.end method

.method public a(Lcom/cmic/sso/sdk/a;)V
    .locals 1

    iget-object v0, p0, Lcom/mobile/auth/d/c;->d:Lcom/mobile/auth/d/b;

    invoke-virtual {v0, p1}, Lcom/mobile/auth/d/b;->a(Lcom/cmic/sso/sdk/a;)V

    return-void
.end method

.method public a(Lcom/mobile/auth/d/a;)V
    .locals 0

    iput-object p1, p0, Lcom/mobile/auth/d/c;->b:Lcom/mobile/auth/d/a;

    return-void
.end method
