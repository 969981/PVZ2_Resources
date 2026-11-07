.class Lcom/tw/gamesdk/core/UserDataManager$1;
.super Ljava/lang/Object;
.source "UserDataManager.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tw/gamesdk/core/UserDataManager;->getUsersSortedByName()Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/tw/gamesdk/bean/SimpleUserData;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tw/gamesdk/core/UserDataManager;


# direct methods
.method constructor <init>(Lcom/tw/gamesdk/core/UserDataManager;)V
    .locals 0

    .line 220
    iput-object p1, p0, Lcom/tw/gamesdk/core/UserDataManager$1;->this$0:Lcom/tw/gamesdk/core/UserDataManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/tw/gamesdk/bean/SimpleUserData;Lcom/tw/gamesdk/bean/SimpleUserData;)I
    .locals 2

    .line 223
    invoke-virtual {p1}, Lcom/tw/gamesdk/bean/SimpleUserData;->getNickname()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/tw/gamesdk/bean/SimpleUserData;->getNickname()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v1

    .line 224
    :goto_0
    invoke-virtual {p2}, Lcom/tw/gamesdk/bean/SimpleUserData;->getNickname()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lcom/tw/gamesdk/bean/SimpleUserData;->getNickname()Ljava/lang/String;

    move-result-object v1

    .line 225
    :cond_1
    invoke-virtual {p1, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 220
    check-cast p1, Lcom/tw/gamesdk/bean/SimpleUserData;

    check-cast p2, Lcom/tw/gamesdk/bean/SimpleUserData;

    invoke-virtual {p0, p1, p2}, Lcom/tw/gamesdk/core/UserDataManager$1;->compare(Lcom/tw/gamesdk/bean/SimpleUserData;Lcom/tw/gamesdk/bean/SimpleUserData;)I

    move-result p1

    return p1
.end method
