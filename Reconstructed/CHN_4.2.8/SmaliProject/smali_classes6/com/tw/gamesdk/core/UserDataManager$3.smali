.class Lcom/tw/gamesdk/core/UserDataManager$3;
.super Lcom/google/gson/reflect/TypeToken;
.source "UserDataManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tw/gamesdk/core/UserDataManager;->loadUsers()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/reflect/TypeToken<",
        "Ljava/util/List<",
        "Lcom/tw/gamesdk/bean/SimpleUserData;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tw/gamesdk/core/UserDataManager;


# direct methods
.method constructor <init>(Lcom/tw/gamesdk/core/UserDataManager;)V
    .locals 0

    .line 379
    iput-object p1, p0, Lcom/tw/gamesdk/core/UserDataManager$3;->this$0:Lcom/tw/gamesdk/core/UserDataManager;

    invoke-direct {p0}, Lcom/google/gson/reflect/TypeToken;-><init>()V

    return-void
.end method
