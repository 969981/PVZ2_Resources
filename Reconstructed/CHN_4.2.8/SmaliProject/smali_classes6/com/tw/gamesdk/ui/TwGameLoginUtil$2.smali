.class Lcom/tw/gamesdk/ui/TwGameLoginUtil$2;
.super Ljava/lang/Object;
.source "TwGameLoginUtil.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tw/gamesdk/ui/TwGameLoginUtil;->setupListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tw/gamesdk/ui/TwGameLoginUtil;


# direct methods
.method constructor <init>(Lcom/tw/gamesdk/ui/TwGameLoginUtil;)V
    .locals 0

    .line 193
    iput-object p1, p0, Lcom/tw/gamesdk/ui/TwGameLoginUtil$2;->this$0:Lcom/tw/gamesdk/ui/TwGameLoginUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    .line 204
    iget-object p1, p0, Lcom/tw/gamesdk/ui/TwGameLoginUtil$2;->this$0:Lcom/tw/gamesdk/ui/TwGameLoginUtil;

    invoke-static {p1}, Lcom/tw/gamesdk/ui/TwGameLoginUtil;->access$000(Lcom/tw/gamesdk/ui/TwGameLoginUtil;)V

    .line 205
    iget-object p1, p0, Lcom/tw/gamesdk/ui/TwGameLoginUtil$2;->this$0:Lcom/tw/gamesdk/ui/TwGameLoginUtil;

    invoke-static {p1}, Lcom/tw/gamesdk/ui/TwGameLoginUtil;->access$100(Lcom/tw/gamesdk/ui/TwGameLoginUtil;)V

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
