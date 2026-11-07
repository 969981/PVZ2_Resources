.class Lcom/talkweb/twgame/gdt/SplashActivity$1;
.super Ljava/lang/Object;
.source "SplashActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/talkweb/twgame/gdt/SplashActivity;->onNoAD(Lcom/qq/e/comm/util/AdError;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/talkweb/twgame/gdt/SplashActivity;


# direct methods
.method constructor <init>(Lcom/talkweb/twgame/gdt/SplashActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 98
    iput-object p1, p0, Lcom/talkweb/twgame/gdt/SplashActivity$1;->this$0:Lcom/talkweb/twgame/gdt/SplashActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/talkweb/twgame/gdt/SplashActivity$1;->this$0:Lcom/talkweb/twgame/gdt/SplashActivity;

    invoke-virtual {v0}, Lcom/talkweb/twgame/gdt/SplashActivity;->finish()V

    return-void
.end method
