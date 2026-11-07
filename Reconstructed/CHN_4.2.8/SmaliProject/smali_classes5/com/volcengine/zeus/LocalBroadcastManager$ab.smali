.class public final Lcom/volcengine/zeus/LocalBroadcastManager$ab;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/volcengine/zeus/LocalBroadcastManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ab"
.end annotation


# instance fields
.field final aKZ:Landroid/content/Intent;

.field final aLa:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/volcengine/zeus/LocalBroadcastManager$ac;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Intent;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/util/ArrayList<",
            "Lcom/volcengine/zeus/LocalBroadcastManager$ac;",
            ">;)V"
        }
    .end annotation

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput-object p1, p0, Lcom/volcengine/zeus/LocalBroadcastManager$ab;->aKZ:Landroid/content/Intent;

    .line 82
    iput-object p2, p0, Lcom/volcengine/zeus/LocalBroadcastManager$ab;->aLa:Ljava/util/ArrayList;

    return-void
.end method
