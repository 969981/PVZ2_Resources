.class Lcom/tw/gamesdk/adapter/PhoneAdapter$2;
.super Ljava/lang/Object;
.source "PhoneAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tw/gamesdk/adapter/PhoneAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tw/gamesdk/adapter/PhoneAdapter;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/tw/gamesdk/adapter/PhoneAdapter;I)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/tw/gamesdk/adapter/PhoneAdapter$2;->this$0:Lcom/tw/gamesdk/adapter/PhoneAdapter;

    iput p2, p0, Lcom/tw/gamesdk/adapter/PhoneAdapter$2;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 78
    iget-object p1, p0, Lcom/tw/gamesdk/adapter/PhoneAdapter$2;->this$0:Lcom/tw/gamesdk/adapter/PhoneAdapter;

    invoke-static {p1}, Lcom/tw/gamesdk/adapter/PhoneAdapter;->access$000(Lcom/tw/gamesdk/adapter/PhoneAdapter;)Lcom/tw/gamesdk/adapter/PhoneAdapter$OnPhoneItemClickListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 79
    iget-object p1, p0, Lcom/tw/gamesdk/adapter/PhoneAdapter$2;->this$0:Lcom/tw/gamesdk/adapter/PhoneAdapter;

    invoke-static {p1}, Lcom/tw/gamesdk/adapter/PhoneAdapter;->access$000(Lcom/tw/gamesdk/adapter/PhoneAdapter;)Lcom/tw/gamesdk/adapter/PhoneAdapter$OnPhoneItemClickListener;

    move-result-object p1

    iget-object v0, p0, Lcom/tw/gamesdk/adapter/PhoneAdapter$2;->this$0:Lcom/tw/gamesdk/adapter/PhoneAdapter;

    invoke-static {v0}, Lcom/tw/gamesdk/adapter/PhoneAdapter;->access$100(Lcom/tw/gamesdk/adapter/PhoneAdapter;)Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/tw/gamesdk/adapter/PhoneAdapter$2;->val$position:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tw/gamesdk/bean/SimpleUserData;

    invoke-virtual {v0}, Lcom/tw/gamesdk/bean/SimpleUserData;->getUid()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/tw/gamesdk/adapter/PhoneAdapter$2;->val$position:I

    invoke-interface {p1, v0, v1}, Lcom/tw/gamesdk/adapter/PhoneAdapter$OnPhoneItemClickListener;->onUserItemClean(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method
