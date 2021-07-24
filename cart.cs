using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace BABY_COLLECTION
{
    public class carts
    {
        public List<CartItem> Items
        {
            get;
            set;
        }
        public carts()
        {
            Items = new List<CartItem>();
        }
        private int ItemIndexOf(int ProductId)
        {
            foreach(CartItem item in Items)
            {
                if (item.ProductId == ProductId)
                {
                    return Items.IndexOf(item);
                }
            }
            return -1;
        }
        public void InsertProd(CartItem item)
        {
            int index = ItemIndexOf(item.ProductId);
            if (index==-1)
            {
                Items.Add(item);
            }
        }
        public float Total
        {
            get{
                if (Items == null)
                {
                    return 0;
                }
                else
                {
                     float totalp = 0;
                    foreach (CartItem item in Items)
                    {
                        totalp += item.price;
                    }

                    return totalp;
                }
            }
        }
    }
}
