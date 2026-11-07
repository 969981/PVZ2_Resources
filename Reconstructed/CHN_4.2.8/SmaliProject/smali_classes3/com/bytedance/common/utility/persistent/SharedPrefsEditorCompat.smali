.class public Lcom/bytedance/common/utility/persistent/SharedPrefsEditorCompat;
.super Ljava/lang/Object;
.source "SharedPrefsEditorCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/common/utility/persistent/SharedPrefsEditorCompat$GingerbreadEditorImpl;,
        Lcom/bytedance/common/utility/persistent/SharedPrefsEditorCompat$BaseEditorImpl;,
        Lcom/bytedance/common/utility/persistent/SharedPrefsEditorCompat$EditorImpl;
    }
.end annotation


# static fields
.field static final IMPL:Lcom/bytedance/common/utility/persistent/SharedPrefsEditorCompat$EditorImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 38
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_0

    .line 39
    new-instance v0, Lcom/bytedance/common/utility/persistent/SharedPrefsEditorCompat$GingerbreadEditorImpl;

    invoke-direct {v0}, Lcom/bytedance/common/utility/persistent/SharedPrefsEditorCompat$GingerbreadEditorImpl;-><init>()V

    sput-object v0, Lcom/bytedance/common/utility/persistent/SharedPrefsEditorCompat;->IMPL:Lcom/bytedance/common/utility/persistent/SharedPrefsEditorCompat$EditorImpl;

    goto :goto_0

    .line 41
    :cond_0
    new-instance v0, Lcom/bytedance/common/utility/persistent/SharedPrefsEditorCompat$BaseEditorImpl;

    invoke-direct {v0}, Lcom/bytedance/common/utility/persistent/SharedPrefsEditorCompat$BaseEditorImpl;-><init>()V

    sput-object v0, Lcom/bytedance/common/utility/persistent/SharedPrefsEditorCompat;->IMPL:Lcom/bytedance/common/utility/persistent/SharedPrefsEditorCompat$EditorImpl;

    :goto_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static apply(Landroid/content/SharedPreferences$Editor;)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    .line 50
    :cond_0
    sget-object v0, Lcom/bytedance/common/utility/persistent/SharedPrefsEditorCompat;->IMPL:Lcom/bytedance/common/utility/persistent/SharedPrefsEditorCompat$EditorImpl;

    invoke-interface {v0, p0}, Lcom/bytedance/common/utility/persistent/SharedPrefsEditorCompat$EditorImpl;->apply(Landroid/content/SharedPreferences$Editor;)V

    return-void
.end method
