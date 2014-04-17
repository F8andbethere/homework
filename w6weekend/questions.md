## 1. When sizing fonts, what is the difference between px and em?

PX is an absolute size that's affected by the display's resolution you're viewing everything. EMs are relative, with 1em being the baseline.

## 2. What is the difference between visibility:hidden and display:none?

visibility still takes up space in the layout

display:none removes the elemnt from the layout

## 3. What is the difference between position:relative and position:absolute?

position relative allows us to manipulate where an emelemnt is displayed relative to its original position. The browser will still consider it being in its original position of in terms of affecting other elements around it. Basically, you''re offsetting the display of it, but not moving it in the DOM.

In comparison to margin-left for example, which will not only move a DIV to the right, but also push other things around the DIVm the "left:" on a relatively position DIV will still display it in the same way, but not push other things around that DIV.

## 4. What happens to a parent element if all of its direct child elements are floating? How can this be corrected while keeping the child elements floating? Hint, solve CS Challenge 6 and notice the problem.

The parent collapses.

Define a dimension to correct this. "clear:both"

## 5. Describe in english what the following elaborate CSS selector is targeting?

body.home #container .nav > li.nav-item.active:hover a:not(.disabled)[href="/home.html"] {
  ...
}

Selecting all 'a' tags without the .disabled class, while hovered and within a body....class home, id container, class nav direct child li, class nav-item, class active.

## 6. If a div has the following CSS properties applied to it, what will its dimensions be?

margin: 10px 0px 10px 0px;
padding: 5px;
height: 300px;
width: 280px;
border: 1px solid gray;

The dimensions would be height: 322px and width: 282px;

What happens if the above div’s height if it contains another div with the following applied:

height: 600px;

Overflow occurs?

The inner div that is 600px tall is overflowing outside the parent, which means the parent still takes up its normal 292px x 332px area and stuff around it is posiitoned according to that dimension.

If the parent's height was not set at all, then it would grow to accomadate the tall child.

## 7. Why is the following CSS class name that is being used on an element not good practice?

.red {
  color: red;
}

What would be a better way of declaring this style?

It should be describing the classes thing, why is it red or some such. You should describe the content, not the style.

## 8. By default, a div is display:block and a span is a display:_____ ? Also, please explain what this implies.

