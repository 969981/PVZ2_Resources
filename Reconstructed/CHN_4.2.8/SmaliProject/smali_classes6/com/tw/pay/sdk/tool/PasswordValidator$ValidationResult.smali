.class Lcom/tw/pay/sdk/tool/PasswordValidator$ValidationResult;
.super Ljava/lang/Object;
.source "PasswordValidator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tw/pay/sdk/tool/PasswordValidator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ValidationResult"
.end annotation


# instance fields
.field private characterTypes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private messages:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private valid:Z


# direct methods
.method constructor <init>()V
    .locals 1

    .line 250
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 251
    iput-boolean v0, p0, Lcom/tw/pay/sdk/tool/PasswordValidator$ValidationResult;->valid:Z

    .line 252
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/tw/pay/sdk/tool/PasswordValidator$ValidationResult;->characterTypes:Ljava/util/Set;

    .line 253
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/tw/pay/sdk/tool/PasswordValidator$ValidationResult;->messages:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public addCharacterType(Ljava/lang/String;)V
    .locals 1

    .line 264
    iget-object v0, p0, Lcom/tw/pay/sdk/tool/PasswordValidator$ValidationResult;->characterTypes:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addMessage(Ljava/lang/String;)V
    .locals 1

    .line 272
    iget-object v0, p0, Lcom/tw/pay/sdk/tool/PasswordValidator$ValidationResult;->messages:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getCharacterTypes()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 268
    iget-object v0, p0, Lcom/tw/pay/sdk/tool/PasswordValidator$ValidationResult;->characterTypes:Ljava/util/Set;

    return-object v0
.end method

.method public getMessages()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 276
    iget-object v0, p0, Lcom/tw/pay/sdk/tool/PasswordValidator$ValidationResult;->messages:Ljava/util/Set;

    return-object v0
.end method

.method public isValid()Z
    .locals 1

    .line 256
    iget-boolean v0, p0, Lcom/tw/pay/sdk/tool/PasswordValidator$ValidationResult;->valid:Z

    return v0
.end method

.method public setValid(Z)V
    .locals 0

    .line 260
    iput-boolean p1, p0, Lcom/tw/pay/sdk/tool/PasswordValidator$ValidationResult;->valid:Z

    return-void
.end method
