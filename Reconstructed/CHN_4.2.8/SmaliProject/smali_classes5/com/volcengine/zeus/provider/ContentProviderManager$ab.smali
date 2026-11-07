.class public final Lcom/volcengine/zeus/provider/ContentProviderManager$ab;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/volcengine/zeus/provider/ContentProviderManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ab"
.end annotation


# instance fields
.field public final aMU:Lcom/volcengine/zeus/provider/ContentProviderManager$ac;

.field public final aMV:Landroid/content/pm/ProviderInfo;

.field public final aMW:Lcom/volcengine/zeus/provider/PluginContentProvider;


# direct methods
.method public constructor <init>(Lcom/volcengine/zeus/provider/ContentProviderManager$ac;Landroid/content/pm/ProviderInfo;Lcom/volcengine/zeus/provider/PluginContentProvider;)V
    .locals 0

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    iput-object p2, p0, Lcom/volcengine/zeus/provider/ContentProviderManager$ab;->aMV:Landroid/content/pm/ProviderInfo;

    .line 100
    iput-object p1, p0, Lcom/volcengine/zeus/provider/ContentProviderManager$ab;->aMU:Lcom/volcengine/zeus/provider/ContentProviderManager$ac;

    .line 101
    iput-object p3, p0, Lcom/volcengine/zeus/provider/ContentProviderManager$ab;->aMW:Lcom/volcengine/zeus/provider/PluginContentProvider;

    return-void
.end method
