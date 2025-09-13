<?php

use \PHPUnit\Framework\TestCase;

class ProtosTest extends TestCase
{
	/**
	 * @throws \PHPUnit\Framework\MockObject\Exception
	 */
	public function testProtos()
	{
		$mock = $this->createMock(\Google\Protobuf\Internal\Message::class);
		$this->assertNotNull($mock);
	}
}