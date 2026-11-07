.class public Lcom/cmic/sso/sdk/view/b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cmic/sso/sdk/view/b$a;
    }
.end annotation


# static fields
.field private static a:Lcom/cmic/sso/sdk/view/b;


# instance fields
.field private b:Lcom/cmic/sso/sdk/view/b$a;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/cmic/sso/sdk/view/b;
    .locals 2

    sget-object v0, Lcom/cmic/sso/sdk/view/b;->a:Lcom/cmic/sso/sdk/view/b;

    if-nez v0, :cond_1

    const-class v0, Lcom/cmic/sso/sdk/view/b;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/cmic/sso/sdk/view/b;->a:Lcom/cmic/sso/sdk/view/b;

    if-nez v1, :cond_0

    new-instance v1, Lcom/cmic/sso/sdk/view/b;

    invoke-direct {v1}, Lcom/cmic/sso/sdk/view/b;-><init>()V

    sput-object v1, Lcom/cmic/sso/sdk/view/b;->a:Lcom/cmic/sso/sdk/view/b;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Lcom/cmic/sso/sdk/view/b;->a:Lcom/cmic/sso/sdk/view/b;

    return-object v0
.end method


# virtual methods
.method public b()Lcom/cmic/sso/sdk/view/b$a;
    .locals 1

    iget-object v0, p0, Lcom/cmic/sso/sdk/view/b;->b:Lcom/cmic/sso/sdk/view/b$a;

    return-object v0
.end method
