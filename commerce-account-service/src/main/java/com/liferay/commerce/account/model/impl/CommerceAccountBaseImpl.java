/**
 * Copyright (c) 2000-present Liferay, Inc. All rights reserved.
 *
 * This library is free software; you can redistribute it and/or modify it under
 * the terms of the GNU Lesser General Public License as published by the Free
 * Software Foundation; either version 2.1 of the License, or (at your option)
 * any later version.
 *
 * This library is distributed in the hope that it will be useful, but WITHOUT
 * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
 * FOR A PARTICULAR PURPOSE. See the GNU Lesser General Public License for more
 * details.
 */

package com.liferay.commerce.account.model.impl;

import com.liferay.commerce.account.model.CommerceAccount;
import com.liferay.commerce.account.service.CommerceAccountLocalServiceUtil;

/**
 * The extended model base implementation for the CommerceAccount service. Represents a row in the &quot;CommerceAccount&quot; database table, with each column mapped to a property of this class.
 *
 * <p>
 * This class exists only as a container for the default extended model level methods generated by ServiceBuilder. Helper methods and all application logic should be put in {@link CommerceAccountImpl}.
 * </p>
 *
 * @author Marco Leo
 * @see CommerceAccountImpl
 * @see CommerceAccount
 * @generated
 */
public abstract class CommerceAccountBaseImpl
	extends CommerceAccountModelImpl implements CommerceAccount {

	/**
	 * NOTE FOR DEVELOPERS:
	 *
	 * Never modify or reference this class directly. All methods that expect a commerce account model instance should use the <code>CommerceAccount</code> interface instead.
	 */
	@Override
	public void persist() {
		if (this.isNew()) {
			CommerceAccountLocalServiceUtil.addCommerceAccount(this);
		}
		else {
			CommerceAccountLocalServiceUtil.updateCommerceAccount(this);
		}
	}

}