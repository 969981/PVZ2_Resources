.class public Lgbsdk/optional/applog/abej;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/bytedance/applog/encryptor/IEncryptorType;
.implements Lcom/bytedance/mpaas/IEncryptor;


# instance fields
.field public final a:Lcom/bytedance/mpaas/IEncryptor;

.field public final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/bytedance/mpaas/IEncryptor;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgbsdk/optional/applog/abej;->a:Lcom/bytedance/mpaas/IEncryptor;

    iput-object p2, p0, Lgbsdk/optional/applog/abej;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public encrypt([BI)[B
    .locals 1

    iget-object v0, p0, Lgbsdk/optional/applog/abej;->a:Lcom/bytedance/mpaas/IEncryptor;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0, p1, p2}, Lcom/bytedance/mpaas/IEncryptor;->encrypt([BI)[B

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public encryptorType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lgbsdk/optional/applog/abej;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "a"

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lgbsdk/optional/applog/abej;->b:Ljava/lang/String;

    :goto_0
    return-object v0
.end method
