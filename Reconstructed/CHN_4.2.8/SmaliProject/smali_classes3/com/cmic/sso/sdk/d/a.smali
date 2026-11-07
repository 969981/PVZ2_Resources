.class public Lcom/cmic/sso/sdk/d/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cmic/sso/sdk/d/a$a;
    }
.end annotation


# static fields
.field private static a:Lcom/cmic/sso/sdk/d/a$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/cmic/sso/sdk/d/a$a<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/cmic/sso/sdk/d/a$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/cmic/sso/sdk/d/a$a;-><init>(Lcom/cmic/sso/sdk/d/a$1;)V

    sput-object v0, Lcom/cmic/sso/sdk/d/a;->a:Lcom/cmic/sso/sdk/d/a$a;

    return-void
.end method
